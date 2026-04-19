import 'package:dio/dio.dart';
import 'package:familyapp/features/family/data/repo/family_repo.dart';
import 'package:familyapp/features/family/domain/guardian_dashboard_model.dart';

class GuardianRemoteDataSource implements IGuardianRepository {
  final Dio _dio;

  GuardianRemoteDataSource(this._dio);

  @override
  Future<GuardianDashboardModel> getGuardianDashboard() async {
    try {
      final response = await _dio.get('/guardians/dashboard');
      return GuardianDashboardModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e.message ?? 'حدث خطأ أثناء جلب البيانات');
    }
  }
}
