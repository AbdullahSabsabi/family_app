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
    // 1. Request Permission
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('User granted permission');
    }

    // 2. Update Token on server
    String? token = await getFCMToken();
    if (token != null) {
      getIt<NotificationsRepository>().updateFcmToken(token, "Android Device");
    }

    // 3. Handle Foreground Messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Got a message whilst in the foreground!');
      // Typically show a local notification here
    });

    // 4. Handle background message clicks
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('App opened from notification: ${message.data}');
      _navigateToNotifications();
    });

    // 5. Handle terminated state clicks
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
      log('FCM Token: $token');
      return token;
    } catch (e) {
      log('Error getting FCM token: $e');
      return null;
    }
  }
}
