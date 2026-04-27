import 'package:familyapp/features/notifications/domain/models/notification_model.dart';

abstract class NotificationsState {}

class NotificationsInitial extends NotificationsState {}

class NotificationsLoading extends NotificationsState {}

class NotificationsSuccess extends NotificationsState {
  final List<NotificationModel> notifications;
  final PaginationMeta? meta;
  final bool isLoadingMore;
  final String? errorMessage;
  final int unreadCount;

  NotificationsSuccess({
    required this.notifications,
    this.meta,
    this.isLoadingMore = false,
    this.errorMessage,
    this.unreadCount = 0,
  });

  NotificationsSuccess copyWith({
    List<NotificationModel>? notifications,
    PaginationMeta? meta,
    bool? isLoadingMore,
    String? errorMessage,
    int? unreadCount,
  }) {
    return NotificationsSuccess(
      notifications: notifications ?? this.notifications,
      meta: meta ?? this.meta,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: errorMessage ?? this.errorMessage,
      unreadCount: unreadCount ?? this.unreadCount,
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
