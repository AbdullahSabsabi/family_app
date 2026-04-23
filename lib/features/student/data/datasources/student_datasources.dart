import 'package:dio/dio.dart';
import 'package:familyapp/features/student/data/repo/student_repo.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';

class StudentRepositoryImpl implements StudentRepository {
  final Dio _dio;

  StudentRepositoryImpl(this._dio);

  @override
  Future<StudentProfileResponse> getStudentProfile({
    required int studentId,
  }) async {
    final res = await _dio.get('/students/$studentId/profile');
    return StudentProfileResponse.fromJson(res.data);
  }

  @override
  Future<MonthlyEvaluationResponse> getMonthlyEvaluations({
    required int studentId,
  }) async {
    try {
      final res = await _dio.get('/students/$studentId/monthly-evaluation');
      return MonthlyEvaluationResponse.fromJson(res.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return const MonthlyEvaluationResponse(
          status: true,
          message: "لا يوجد تقييمات لهذا الطالب",
          data: EvaluationData(evaluations: {}),
        );
      }
      rethrow;
    }
  }

  @override
  Future<FinancialSummaryResponse> getFinancialSummary({
    required int studentId,
  }) async {
    final res = await _dio.get('/students/$studentId/financial-summary');
    return FinancialSummaryResponse.fromJson(res.data);
  }

  @override
  Future<ExamResponse> getStudentExams({required int studentId}) async {
    final res = await _dio.get(
      '/students/$studentId/exam-results/last-two-weeks',
    );
    return ExamResponse.fromJson(res.data);
  }

  @override
  Future<FilteredExamResponse> getFilteredExams({
    required int studentId,
    int? subjectId,
    String? date,
    String? dateFrom,
    String? dateTo,
    num? marksFrom,
    num? marksTo,
    int? isPassed,
  }) async {
    final res = await _dio.get(
      '/exam-results/filter',
      queryParameters: {
        'student_id': studentId,
        if (subjectId != null) 'subject_id': subjectId,
        if (date != null) 'date': date,
        if (dateFrom != null) 'date_from': dateFrom,
        if (dateTo != null) 'date_to': dateTo,
        if (marksFrom != null) 'marks_from': marksFrom,
        if (marksTo != null) 'marks_to': marksTo,
        if (isPassed != null) 'is_passed': isPassed,
      },
    );
    return FilteredExamResponse.fromJson(res.data);
  }

  @override
  Future<EnrolledSubjectsResponse> getEnrolledSubjects({
    required int studentId,
  }) async {
    final res = await _dio.get('/students/$studentId/enrolled-subjects');
    return EnrolledSubjectsResponse.fromJson(res.data);
  }
}
