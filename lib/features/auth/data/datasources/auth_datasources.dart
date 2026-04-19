import 'package:dio/dio.dart';
import 'package:familyapp/features/auth/data/repo/auth_repo.dart';
import 'package:familyapp/features/auth/domain/auth_response.dart';

class AuthRemoteDataSource implements AuthRepository {
  final Dio _dio;

  AuthRemoteDataSource(this._dio);

  @override
  Future<AuthResponse> changePassword({
    required String currentPassword,
    required String newPassword,
    required String newPasswordConfirmation,
  }) async {
    try {
      final response = await _dio.post(
        '/users/change-password',
        data: {
          'current_password': currentPassword,
          'new_password': newPassword,
          'new_password_confirmation': newPasswordConfirmation,
        },
      );

      return AuthResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage =
          e.response?.data['message'] ?? 'حدث خطأ أثناء تغيير كلمة المرور';
      throw Exception(errorMessage);
    }
  }

  @override
  Future<AuthResponse> login({
    required String uniqueId,
    required String password,
    String? fcmToken,
    Map<String, dynamic>? deviceInfo,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'unique_id': uniqueId,
          'password': password,
          if (fcmToken != null) 'fcm_token': fcmToken,
          if (deviceInfo != null) 'device_info': deviceInfo,
        },
      );

      return AuthResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'حدث خطأ في تسجيل الدخول');
    }
  }

  @override
  Future<bool> logout() async {
    try {
      final response = await _dio.post('/logout');
      return response.data['status'] ?? false;
    } catch (e) {
      return false;
    }
  }
}
