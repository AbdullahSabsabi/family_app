import 'package:familyapp/features/notifications/domain/models/notification_model.dart';

abstract class NotificationsRepository {
  Future<NotificationListResponse> getNotifications({
    bool? unread,
    int page = 1,
  });

  Future<NotificationDetailResponse> getNotificationDetails(int receptionId);

  Future<NotificationListResponse> searchNotifications(
    String query, {
    int page = 1,
  });

  Future<NotificationListResponse> filterByDate(
    String from,
    String to, {
    int page = 1,
  });
  Future<bool> markAsRead(int receptionId);
  Future<bool> deleteNotification(int receptionId);
  Future<int> getUnreadCount();
  Future<bool> markAllAsRead();
  Future<bool> updateFcmToken(String token, String deviceInfo);
}
