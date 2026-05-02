import 'package:familyapp/features/notifications/data/repo/notifications_repo.dart';
import 'package:familyapp/features/notifications/domain/models/notification_model.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NotificationsCubit extends HydratedCubit<NotificationsState> {
  final NotificationsRepository _repository;

  NotificationsCubit(this._repository) : super(NotificationsInitial());

  Future<void> getNotifications({bool? unread, int page = 1, int? studentId}) async {
    final hasData = state is NotificationsSuccess && (state as NotificationsSuccess).notifications.isNotEmpty;
    final isOnline = await InternetConnection().hasInternetAccess;

    if (page == 1) {
      if (!hasData) {
        emit(NotificationsLoading());
      }
    } else {
      if (state is NotificationsSuccess) {
        emit((state as NotificationsSuccess).copyWith(isLoadingMore: true));
      }
    }

    if (!isOnline) {
      _handleFetchError("لا يوجد اتصال بالإنترنت", page, isOffline: true);
      return;
    }

    try {
      final response = await _repository.getNotifications(unread: unread, page: page, studentId: studentId);
      final count = await _repository.getUnreadCount();

      if (response.status) {
        final sortedNotifications = List<NotificationModel>.from(response.data)
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        if (page == 1) {
          emit(NotificationsSuccess(
            notifications: sortedNotifications,
            meta: response.meta,
            unreadCount: count,
            isOffline: false,
          ));
        } else {
          if (state is NotificationsSuccess) {
            final currentState = state as NotificationsSuccess;
            final allNotifications = [...currentState.notifications, ...sortedNotifications]
              ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
            
            emit(NotificationsSuccess(
              notifications: allNotifications,
              meta: response.meta,
              isLoadingMore: false,
              unreadCount: count,
              isOffline: false,
            ));
          }
        }
      } else {
        _handleFetchError(response.message, page);
      }
    } catch (e) {
      _handleFetchError("حدث خطأ في الاتصال بالخادم", page);
    }
  }

  void _handleFetchError(String message, int page, {bool isOffline = false}) {
    if (page == 1) {
      if (state is NotificationsSuccess) {
        emit((state as NotificationsSuccess).copyWith(
          isLoadingMore: false,
          errorMessage: isOffline ? null : message, // Don't show snackbar error if just offline, UI will handle it
          isOffline: isOffline,
        ));
      } else {
        emit(NotificationsError(message));
      }
    } else {
      if (state is NotificationsSuccess) {
        emit((state as NotificationsSuccess).copyWith(
          isLoadingMore: false,
          errorMessage: message,
          isOffline: isOffline,
        ));
      }
    }
  }

  Future<void> getNotificationDetail(int receptionId) async {
    emit(NotificationDetailLoading());
    final response = await _repository.getNotificationDetails(receptionId);
    if (response.status && response.data != null) {
      emit(NotificationDetailSuccess(response.data!));
    } else {
      emit(NotificationsError(response.message));
    }
  }

  Future<void> searchNotifications(String query, {int page = 1}) async {
    if (page == 1) emit(NotificationsLoading());

    final response = await _repository.searchNotifications(query, page: page);
    final count = await _repository.getUnreadCount();

    if (response.status) {
      if (page == 1) {
        emit(NotificationsSuccess(
          notifications: response.data,
          meta: response.meta,
          unreadCount: count,
        ));
      } else {
        if (state is NotificationsSuccess) {
          final currentState = state as NotificationsSuccess;
          emit(NotificationsSuccess(
            notifications: [...currentState.notifications, ...response.data],
            meta: response.meta,
            isLoadingMore: false,
            unreadCount: count,
          ));
        }
      }
    } else {
      emit(NotificationsError(response.message));
    }
  }

  Future<void> markAsRead(int receptionId) async {
    if (state is NotificationsSuccess) {
      final currentState = state as NotificationsSuccess;
      int unreadCount = currentState.unreadCount;
      
      final updatedNotifications = currentState.notifications.map((n) {
        if (n.receptionId == receptionId) {
          if (!n.isRead) {
            unreadCount = (unreadCount > 0) ? unreadCount - 1 : 0;
          }
          return n.copyWith(isRead: true);
        }
        return n;
      }).toList();

      emit(currentState.copyWith(
        notifications: updatedNotifications,
        unreadCount: unreadCount,
      ));
      await _repository.markAsRead(receptionId);
    }
  }

  Future<void> deleteNotification(int receptionId) async {
    if (state is NotificationsSuccess) {
      final currentState = state as NotificationsSuccess;
      final updatedNotifications = currentState.notifications
          .where((n) => n.receptionId != receptionId)
          .toList();

      emit(currentState.copyWith(notifications: updatedNotifications));
      await _repository.deleteNotification(receptionId);
      getUnreadCount(); // Update count after deletion
    }
  }

  Future<void> getUnreadCount() async {
    final count = await _repository.getUnreadCount();
    if (state is NotificationsSuccess) {
      emit((state as NotificationsSuccess).copyWith(unreadCount: count));
    }
  }

  Future<void> markAllAsRead() async {
    final result = await _repository.markAllAsRead();
    if (result) {
      if (state is NotificationsSuccess) {
        final currentState = state as NotificationsSuccess;
        final updatedNotifications = currentState.notifications.map((n) {
          return n.copyWith(isRead: true);
        }).toList();
        emit(currentState.copyWith(
          notifications: updatedNotifications,
          unreadCount: 0,
        ));
      }
    }
  }

  void clearError() {
    if (state is NotificationsSuccess) {
      emit((state as NotificationsSuccess).copyWith(errorMessage: null));
    }
  }

  @override
  NotificationsState? fromJson(Map<String, dynamic> json) {
    try {
      return NotificationsSuccess.fromMap(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(NotificationsState state) {
    if (state is NotificationsSuccess) {
      return state.toMap();
    }
    return null;
  }
}
