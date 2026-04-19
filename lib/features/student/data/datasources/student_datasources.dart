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
    final res = await _dio.get('/students/$studentId/monthly-evaluation');
    return MonthlyEvaluationResponse.fromJson(res.data);
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
}
