import 'dart:convert';

import 'package:familyapp/core/helper/local_storage.dart';
import 'package:familyapp/features/auth/data/repo/auth_repo.dart';
import 'package:familyapp/features/auth/domain/auth_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  final AuthLocalStorage _storage = AuthLocalStorage();

  AuthCubit(this._authRepository) : super(AuthInitial());

  Future<void> checkAuth() async {
    try {
      final token = await _storage.getAccessToken();
      final userDataJson = await AuthLocalStorage.getData("user_data");

      print("TOKEN: $token");
      print("USER: $userDataJson");

      if (token != null &&
          token.isNotEmpty &&
          userDataJson != null &&
          userDataJson.isNotEmpty) {
        final user = User.fromJson(jsonDecode(userDataJson));

        emit(
          AuthSuccess(
            AuthResponse(
              status: true,
              message: "Welcome back",
              data: AuthData(user: user, token: token),
            ),
          ),
        );
      } else {
        emit(AuthError("No session"));
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> login({
    required String uniqueId,
    required String password,
    String? fcmToken,
  }) async {
    emit(AuthLoading());

    try {
      final response = await _authRepository.login(
        uniqueId: uniqueId,
        password: password,
        fcmToken: fcmToken,
      );

      if (response.status && response.data != null) {
        await _storage.saveTokens(response.data!.token, "");

        await AuthLocalStorage.setData(
          "user_data",
          jsonEncode(response.data!.user.toJson()),
        );

        emit(AuthSuccess(response));
      } else {
        emit(AuthError(response.message));
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    emit(ChangePasswordLoading());

    try {
      final response = await _authRepository.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
        newPasswordConfirmation: confirmPassword,
      );

      if (response.status) {
        await _storage.clearTokens();
        emit(ChangePasswordSuccess(response.message));
      } else {
        emit(ChangePasswordError(response.message));
      }
    } catch (e) {
      emit(ChangePasswordError(e.toString().replaceAll('Exception:', '')));
    }
  }

  Future<void> logout() async {
    emit(AuthLoading());
    try {
      final success = await _authRepository.logout();
      if (success) {
        await _storage.clearTokens();
        await _storage.clearData("user_data");

        emit(LogoutSuccess());
      } else {
        emit(AuthError("فشل تسجيل الخروج من السيرفر"));
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
