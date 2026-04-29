import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:familyapp/features/notifications/data/repo/notifications_repo.dart';
import 'package:familyapp/features/notifications/presentation/screens/notifications_list_screen.dart';
import 'package:familyapp/family_app.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:flutter/material.dart';

class NotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> initialize() async {
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('User granted permission');
    }

    String? token = await getFCMToken();
    if (token != null) {
      getIt<NotificationsRepository>().updateFcmToken(token, "Android Device");
    }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Got a message whilst in the foreground!');
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('App opened from notification: ${message.data}');
      _navigateToNotifications();
    });

    RemoteMessage? initialMessage = await _fcm.getInitialMessage();
    if (initialMessage != null) {
      _navigateToNotifications();
    }
  }

  void _navigateToNotifications() {
    FamilyApp.navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => const NotificationScreen()),
    );
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
