import 'package:familyapp/features/exams/domain/models/exams_model.dart';

abstract class ExamsRepository {
  Future<ExamsResponse> getStudentExams({
    required int studentId,
    required String date,
  });
}
