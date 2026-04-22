import 'package:familyapp/features/schedule/domain/models/schedule_model.dart';

abstract class ScheduleRepository {
  Future<StudentScheduleResponse> getSchedule({
    required int studentId,
    String? day,
  });
}
