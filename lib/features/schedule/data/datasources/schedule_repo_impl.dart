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
    final res = await _dio.get(
      '/students/schedules',
      queryParameters: {
        'type': 'student',
        'id': studentId,
        if (day != null) 'day': day,
      },
    );
    return StudentScheduleResponse.fromJson(res.data);
  }
}
