import 'package:familyapp/features/schedule/domain/models/schedule_model.dart';

abstract class ScheduleState {}

class ScheduleInitial extends ScheduleState {}

class ScheduleLoading extends ScheduleState {}

class ScheduleSuccess extends ScheduleState {
  final Map<int, ScheduleData> cachedSchedules;
  final int? currentStudentId;
  final bool isRefreshing;
  final bool isDayLoading;

  ScheduleSuccess({
    required this.cachedSchedules,
    this.currentStudentId,
    this.isRefreshing = false,
    this.isDayLoading = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'cachedSchedules': cachedSchedules.map(
        (key, value) => MapEntry(key.toString(), value.toJson()),
      ),
      'currentStudentId': currentStudentId,
      'isRefreshing': isRefreshing,
      'isDayLoading': isDayLoading,
    };
  }

  factory ScheduleSuccess.fromMap(Map<String, dynamic> map) {
    return ScheduleSuccess(
      cachedSchedules: (map['cachedSchedules'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          int.parse(key),
          ScheduleData.fromJson(value as Map<String, dynamic>),
        ),
      ),
      currentStudentId: map['currentStudentId'] as int?,
      isRefreshing: map['isRefreshing'] as bool? ?? false,
      isDayLoading: map['isDayLoading'] as bool? ?? false,
    );
  }

  ScheduleSuccess copyWith({
    Map<int, ScheduleData>? cachedSchedules,
    int? currentStudentId,
    bool? isRefreshing,
    bool? isDayLoading,
  }) {
    return ScheduleSuccess(
      cachedSchedules: cachedSchedules ?? this.cachedSchedules,
      currentStudentId: currentStudentId ?? this.currentStudentId,
      isRefreshing: isRefreshing ?? this.isRefreshing,
      isDayLoading: isDayLoading ?? this.isDayLoading,
    );
  }
}

class ScheduleError extends ScheduleState {
  final String message;
  ScheduleError(this.message);
}
