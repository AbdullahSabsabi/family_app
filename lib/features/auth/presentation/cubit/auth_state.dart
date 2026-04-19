import 'package:familyapp/features/auth/domain/auth_response.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final AuthResponse authResponse;
  AuthSuccess(this.authResponse);
}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}

class LogoutSuccess extends AuthState {}

class ChangePasswordLoading extends AuthState {}

class ChangePasswordSuccess extends AuthState {
  final String message;
  ChangePasswordSuccess(this.message);
}

class ChangePasswordError extends AuthState {
  final String message;
  ChangePasswordError(this.message);
}
