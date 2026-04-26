import 'package:dio/dio.dart';
import 'package:familyapp/features/exams/data/datasources/exams_repository_impl.dart';
import 'package:familyapp/features/exams/domain/models/exams_model.dart';
import 'package:familyapp/features/exams/data/repo/exams_repository.dart';

class ExamsRepositoryImpl implements ExamsRepository {
  final Dio _dio;

  ExamsRepositoryImpl(this._dio);

  @override
  Future<ExamsResponse> getStudentExams({
    required int studentId,
    required String date,
  }) async {
    try {
      final res = await _dio.get(
        '/exams/student/$studentId/date/$date',
      );
      return ExamsResponse.fromJson(res.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return const ExamsResponse(
          status: true,
          message: "لا يوجد مذاكرات في هذا التاريخ",
          data: [],
        );
      }
      return ExamsResponse(
        status: false,
        message: e.response?.data?['message'] ?? "خطأ في الاتصال بالسيرفر",
      );
    } catch (e) {
      return ExamsResponse(status: false, message: e.toString());
    }
  }
}
