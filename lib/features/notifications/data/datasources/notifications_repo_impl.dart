import 'package:dio/dio.dart';
import 'package:familyapp/features/notifications/data/repo/notifications_repo.dart';
import 'package:familyapp/features/notifications/domain/models/notification_model.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final Dio _dio;

  NotificationsRepositoryImpl(this._dio);

  @override
  Future<NotificationListResponse> getNotifications({
    bool? unread,
    int page = 1,
  }) async {
    try {
      final res = await _dio.get(
        '/notifications',
        queryParameters: {
          if (unread == true) 'unread': 'true',
          'page': page,
        },
      );
      return NotificationListResponse.fromJson(res.data);
    } catch (e) {
      return NotificationListResponse(
        status: false,
        message: "فشل جلب الإشعارات",
        data: [],
      );
    }
  }

  @override
  Future<NotificationDetailResponse> getNotificationDetails(int receptionId) async {
    try {
      final res = await _dio.get('/notifications/$receptionId');
      return NotificationDetailResponse.fromJson(res.data);
    } catch (e) {
      return NotificationDetailResponse(
        status: false,
        message: "فشل جلب تفاصيل الإشعار",
      );
    }
  }

  @override
  Future<NotificationListResponse> searchNotifications(
    String query, {
    int page = 1,
  }) async {
    try {
      final res = await _dio.get(
        '/notifications/search',
        queryParameters: {
          'query': query,
          'page': page,
        },
      );
      return NotificationListResponse.fromJson(res.data);
    } catch (e) {
      return NotificationListResponse(
        status: false,
        message: "فشل البحث",
        data: [],
      );
    }
  }

  @override
  Future<NotificationListResponse> filterByDate(
    String from,
    String to, {
    int page = 1,
  }) async {
    try {
      final res = await _dio.get(
        '/notifications/filter-by-date',
        queryParameters: {
          'from': from,
          'to': to,
          'page': page,
        },
      );
      return NotificationListResponse.fromJson(res.data);
    } catch (e) {
      return NotificationListResponse(
        status: false,
        message: "فشل الفلترة بالتاريخ",
        data: [],
      );
    }
  }
  @override
  Future<bool> markAsRead(int receptionId) async {
    try {
      final res = await _dio.patch('/notifications/$receptionId/read');
      return res.data['status'] == true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deleteNotification(int receptionId) async {
    try {
      final res = await _dio.delete('/notifications/$receptionId');
      return res.data['status'] == true;
    } catch (e) {
      return false;
    }
  }
  @override
  Future<int> getUnreadCount() async {
    try {
      final res = await _dio.get('/notifications/unread/count');
      if (res.data['status'] == true) {
        return res.data['data']['count'] ?? 0;
      }
      return 0;
    } catch (e) {
      return 0;
    }
  }

  @override
  Future<bool> markAllAsRead() async {
    try {
      final res = await _dio.post('/notifications/mark-all-as-read');
      return res.data['status'] == true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> updateFcmToken(String token, String deviceInfo) async {
    try {
      final res = await _dio.post(
        '/fcm-tokens',
        data: {
          'token': token,
          'device_info': deviceInfo,
        },
      );
      return res.data['status'] == true;
    } catch (e) {
      return false;
    }
  }
}
