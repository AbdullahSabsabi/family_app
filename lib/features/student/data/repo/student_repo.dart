import 'package:familyapp/features/student/domain/models/student_models.dart';

abstract class StudentRepository {
  Future<StudentProfileResponse> getStudentProfile({required int studentId});

  Future<MonthlyEvaluationResponse> getMonthlyEvaluations({
    required int studentId,
  });

  Future<FinancialSummaryResponse> getFinancialSummary({
    required int studentId,
  });

  Future<ExamResponse> getStudentExams({required int studentId});

  Future<FilteredExamResponse> getFilteredExams({
    required int studentId,
    int? subjectId,
    String? date,
    String? dateFrom,
    String? dateTo,
    num? marksFrom,
    num? marksTo,
    int? isPassed,
  });

  Future<EnrolledSubjectsResponse> getEnrolledSubjects({required int studentId});
}
