import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required bool status,
    required String message,
    AuthData? data,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
abstract class AuthData with _$AuthData {
  const factory AuthData({
    required User user,
    required String token,
    @JsonKey(name: 'must_change_password')
    @Default(false)
    bool mustChangePassword,
    @JsonKey(name: 'redirect_to') String? redirectTo,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    @JsonKey(name: 'unique_id') required String uniqueId,
    required String name,
    required String type,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'related_id') int? relatedId,
    List<Student>? students, // القائمة الجديدة للطلاب
    Extra? extra,
    @Default([]) List<String> roles,
    @Default([]) List<String> permissions,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Student with _$Student {
  const factory Student({
    required int id,
    @JsonKey(name: 'unique_id') required String uniqueId,
    required String name,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

@freezed
abstract class Extra with _$Extra {
  const factory Extra({
    @JsonKey(name: 'students_count') int? studentsCount,
    String? batch,
    String? gender,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? relationship,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}
