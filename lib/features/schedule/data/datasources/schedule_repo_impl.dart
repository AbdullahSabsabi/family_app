import 'package:dio/dio.dart';
import 'package:familyapp/features/schedule/data/repo/schedule_repo.dart';
import 'package:familyapp/features/schedule/domain/models/schedule_model.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final Dio _dio;

  ScheduleRepositoryImpl(this._dio);

  @override
  Future<StudentScheduleResponse> getSchedule({
    required int studentId,
    String? day,
  }) async {
    try {
      final String formattedDay = day?.toLowerCase() ?? "";
      print("DEBUG: Calling API with ID: $studentId and Day: $formattedDay");
      
      final res = await _dio.get(
        '/students/schedules',
        queryParameters: {
          'type': 'student',
          'id': studentId.toString(),
          if (day != null && day.isNotEmpty) 'day': day.toLowerCase(),
        },
      );
      
      print("DEBUG: Success Response: ${res.data}");
      return StudentScheduleResponse.fromJson(res.data);
    } on DioException catch (e) {
      print("DEBUG: Dio Error: ${e.response?.statusCode} - ${e.response?.data}");
      if (e.response?.statusCode == 404) {
        return const StudentScheduleResponse(
          status: true,
          message: "لا يوجد برنامج لهذا الطالب",
          data: ScheduleData(periodsCount: 0, periods: {}),
        );
      }
      return StudentScheduleResponse(
        status: false,
        message: e.response?.data?['message'] ?? "خطأ من السيرفر",
      );
    } catch (e) {
      print("DEBUG: Unexpected Error: $e");
      return StudentScheduleResponse(status: false, message: e.toString());
    }
  }
}
