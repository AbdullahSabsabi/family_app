import 'package:familyapp/features/attendance/domain/models/attendance_models.dart';

abstract class AttendanceState {
  Map<String, dynamic>? toJson();
}

class AttendanceInitial extends AttendanceState {
  @override
  Map<String, dynamic>? toJson() => {'type': 'Initial'};
}

class AttendanceLoading extends AttendanceState {
  @override
  Map<String, dynamic>? toJson() => {'type': 'Loading'};
}

class AttendanceSuccess extends AttendanceState {
  final Map<int, Map<String, AttendanceResponse>> cachedAttendance;
  final AttendanceResponse? lastFetchedResult;
  final int currentStudentId;
  final String? currentDateKey;

  AttendanceSuccess({
    required this.cachedAttendance,
    required this.currentStudentId,
    this.lastFetchedResult,
    this.currentDateKey,
  });

  AttendanceResponse? get currentAttendance =>
      lastFetchedResult ??
      cachedAttendance[currentStudentId]?[currentDateKey ?? 'weekly'];

  @override
  Map<String, dynamic>? toJson() => {
    'type': 'Success',
    'currentStudentId': currentStudentId,
    'currentDateKey': currentDateKey,
    'cachedAttendance': cachedAttendance.map(
      (studentId, dateMap) => MapEntry(
        studentId.toString(),
        dateMap.map(
          (dateKey, response) => MapEntry(dateKey, response.toJson()),
        ),
      ),
    ),
  };

  factory AttendanceSuccess.fromJson(Map<String, dynamic> json) {
    final cachedData = json['cachedAttendance'] as Map? ?? {};
    final Map<int, Map<String, AttendanceResponse>> outerMap = {};

    cachedData.forEach((studentIdStr, dateMapRaw) {
      try {
        final studentId = int.tryParse(studentIdStr.toString());
        if (studentId != null && dateMapRaw is Map) {
          final Map<String, AttendanceResponse> innerMap = {};
          dateMapRaw.forEach((dateKey, responseJson) {
            try {
              innerMap[dateKey.toString()] = AttendanceResponse.fromJson(
                responseJson as Map<String, dynamic>,
              );
            } catch (_) {}
          });
          outerMap[studentId] = innerMap;
        }
      } catch (_) {}
    });

    return AttendanceSuccess(
      currentStudentId: (json['currentStudentId'] as num?)?.toInt() ?? 0,
      currentDateKey: json['currentDateKey'] as String?,
      cachedAttendance: outerMap,
    );
  }
}

class AttendanceError extends AttendanceState {
  final String message;
  AttendanceError(this.message);

  @override
  Map<String, dynamic>? toJson() => {'type': 'Error', 'message': message};
}
