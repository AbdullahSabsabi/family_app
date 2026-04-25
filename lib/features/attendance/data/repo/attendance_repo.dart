import 'package:familyapp/features/attendance/domain/models/attendance_models.dart';

abstract class AttendanceRepository {
  Future<AttendanceResponse> getWeeklyAttendance({
    required int studentId,
    String? date,
  });
}
