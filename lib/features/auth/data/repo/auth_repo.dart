import 'package:familyapp/features/auth/domain/auth_response.dart';

abstract class AuthRepository {
  Future<AuthResponse> login({
    required String uniqueId,
    required String password,
    String? fcmToken,
    Map<String, dynamic>? deviceInfo,
  });

  Future<AuthResponse> changePassword({
    required String currentPassword,
    required String newPassword,
    required String newPasswordConfirmation,
  });

  Future<bool> logout();
}
