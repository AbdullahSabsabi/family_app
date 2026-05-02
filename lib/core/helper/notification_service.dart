import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:familyapp/features/notifications/data/repo/notifications_repo.dart';
import 'package:familyapp/features/notifications/presentation/screens/notifications_list_screen.dart';
import 'package:familyapp/family_app.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  static const AndroidNotificationChannel _channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.max,
    playSound: true,
    enableVibration: true,
    enableLights: true,
  );

  Future<void> initialize() async {
    // Request permission
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('User granted permission');
    }

    // Initialize local notifications
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings();
    const InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (NotificationResponse details) {
        log('Local notification tapped: ${details.payload}');
        _navigateToNotifications();
      },
    );

    // Create high importance channel for Android
    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    // Update FCM token
    String? token = await getFCMToken();
    if (token != null) {
      String deviceName = "Unknown Device";
      try {
        final deviceInfo = DeviceInfoPlugin();
        if (Platform.isAndroid) {
          final androidInfo = await deviceInfo.androidInfo;
          deviceName = "${androidInfo.brand} ${androidInfo.model}";
        } else if (Platform.isIOS) {
          final iosInfo = await deviceInfo.iosInfo;
          deviceName = iosInfo.name;
        }
      } catch (e) {
        log('Error getting device info for FCM: $e');
      }
      getIt<NotificationsRepository>().updateFcmToken(token, deviceName);
    }

    // Foreground notifications
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Got a message whilst in the foreground!');
      _showLocalNotification(message);
    });

    // Background notifications tap (when app is in background but not terminated)
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('App opened from notification: ${message.data}');
      _navigateToNotifications();
    });

    // App opened from terminated state
    RemoteMessage? initialMessage = await _fcm.getInitialMessage();
    if (initialMessage != null) {
      log('Initial message received: ${initialMessage.data}');
      _navigateToNotifications();
    }
  }

  Future<void> _showLocalNotification(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;

    if (notification != null && android != null) {
      await _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _channel.id,
            _channel.name,
            channelDescription: _channel.description,
            importance: Importance.max,
            priority: Priority.high,
            playSound: true,
            enableVibration: true,
            icon: android.smallIcon,
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        payload: message.data.toString(),
      );
    }
  }

  void _navigateToNotifications() {
    // We use a small delay to ensure the context/navigator is ready
    Future.delayed(const Duration(milliseconds: 500), () {
      FamilyApp.navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (context) => const NotificationScreen()),
      );
    });
  }

  Future<String?> getFCMToken() async {
    try {
      String? token = await _fcm.getToken();
      print('================ FCM TOKEN ================');
      print(token);
      print('===========================================');
      return token;
    } catch (e) {
      print('Error getting FCM token: $e');
      return null;
    }
  }
}
