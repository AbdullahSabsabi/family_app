import 'package:dio/dio.dart';
import 'package:familyapp/features/attendance/data/repo/attendance_repo.dart';
import 'package:familyapp/features/attendance/domain/models/attendance_models.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final Dio _dio;

  AttendanceRepositoryImpl(this._dio);

  @override
  Future<AttendanceResponse> getWeeklyAttendance({
    required int studentId,
    String? date,
  }) async {
    final response = await _dio.get(
      '/students/$studentId/weekly-attendance',
      queryParameters: {
        if (date != null) 'date': date,
      },
    );
    return AttendanceResponse.fromJson(response.data);
  }
}
