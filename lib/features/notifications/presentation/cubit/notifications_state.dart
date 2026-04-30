import 'package:familyapp/features/notifications/domain/models/notification_model.dart';

abstract class NotificationsState {}

class NotificationsInitial extends NotificationsState {}

class NotificationsLoading extends NotificationsState {}

class NotificationsSuccess extends NotificationsState {
  final List<NotificationModel> notifications;
  final PaginationMeta? meta;
  final bool isLoadingMore;
  final String? errorMessage;
  final bool isOffline;
  final int unreadCount;

  NotificationsSuccess({
    required this.notifications,
    this.meta,
    this.isLoadingMore = false,
    this.errorMessage,
    this.isOffline = false,
    this.unreadCount = 0,
  });

  NotificationsSuccess copyWith({
    List<NotificationModel>? notifications,
    PaginationMeta? meta,
    bool? isLoadingMore,
    String? errorMessage,
    bool? isOffline,
    int? unreadCount,
  }) {
    return NotificationsSuccess(
      notifications: notifications ?? this.notifications,
      meta: meta ?? this.meta,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: errorMessage ?? this.errorMessage,
      isOffline: isOffline ?? this.isOffline,
      unreadCount: unreadCount ?? this.unreadCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'notifications': notifications.map((x) => x.toJson()).toList(),
      'meta': meta?.toJson(),
      'unreadCount': unreadCount,
      'isOffline': isOffline,
    };
  }

  factory NotificationsSuccess.fromMap(Map<String, dynamic> map) {
    return NotificationsSuccess(
      notifications: List<NotificationModel>.from(
        (map['notifications'] as List).map((x) => NotificationModel.fromJson(x as Map<String, dynamic>)),
      ),
      meta: map['meta'] != null ? PaginationMeta.fromJson(map['meta'] as Map<String, dynamic>) : null,
      unreadCount: map['unreadCount'] as int? ?? 0,
      isOffline: map['isOffline'] as bool? ?? false,
    );
  }
}

class NotificationDetailLoading extends NotificationsState {}

class NotificationDetailSuccess extends NotificationsState {
  final NotificationDetailData data;
  NotificationDetailSuccess(this.data);
}

class NotificationsError extends NotificationsState {
  final String message;
  NotificationsError(this.message);
}
