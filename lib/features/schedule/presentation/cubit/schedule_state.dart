import 'package:familyapp/features/schedule/domain/models/schedule_model.dart';

abstract class ScheduleState {}

class ScheduleInitial extends ScheduleState {}

class ScheduleLoading extends ScheduleState {}

class ScheduleSuccess extends ScheduleState {
  final Map<int, ScheduleData> cachedSchedules;
  final int? currentStudentId;

  ScheduleSuccess({
    required this.cachedSchedules,
    this.currentStudentId,
  });

  Map<String, dynamic> toMap() {
    return {
      'cachedSchedules': cachedSchedules.map(
        (key, value) => MapEntry(key.toString(), value.toJson()),
      ),
      'currentStudentId': currentStudentId,
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
    );
  }
}

class ScheduleError extends ScheduleState {
  final String message;
  ScheduleError(this.message);
}
