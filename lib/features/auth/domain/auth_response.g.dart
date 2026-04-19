// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : AuthData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_AuthData _$AuthDataFromJson(Map<String, dynamic> json) => _AuthData(
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String,
  mustChangePassword: json['must_change_password'] as bool? ?? false,
  redirectTo: json['redirect_to'] as String?,
);

Map<String, dynamic> _$AuthDataToJson(_AuthData instance) => <String, dynamic>{
  'user': instance.user,
  'token': instance.token,
  'must_change_password': instance.mustChangePassword,
  'redirect_to': instance.redirectTo,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  uniqueId: json['unique_id'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  fullName: json['full_name'] as String,
  photoUrl: json['photo_url'] as String?,
  relatedId: (json['related_id'] as num?)?.toInt(),
  students: (json['students'] as List<dynamic>?)
      ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
  extra: json['extra'] == null
      ? null
      : Extra.fromJson(json['extra'] as Map<String, dynamic>),
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'unique_id': instance.uniqueId,
  'name': instance.name,
  'type': instance.type,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'full_name': instance.fullName,
  'photo_url': instance.photoUrl,
  'related_id': instance.relatedId,
  'students': instance.students,
  'extra': instance.extra,
  'roles': instance.roles,
  'permissions': instance.permissions,
  'created_at': instance.createdAt,
};

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  id: (json['id'] as num).toInt(),
  uniqueId: json['unique_id'] as String,
  name: json['name'] as String,
  photoUrl: json['photo_url'] as String?,
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'id': instance.id,
  'unique_id': instance.uniqueId,
  'name': instance.name,
  'photo_url': instance.photoUrl,
};

_Extra _$ExtraFromJson(Map<String, dynamic> json) => _Extra(
  studentsCount: (json['students_count'] as num?)?.toInt(),
  batch: json['batch'] as String?,
  gender: json['gender'] as String?,
  dateOfBirth: json['date_of_birth'] as String?,
  relationship: json['relationship'] as String?,
);

Map<String, dynamic> _$ExtraToJson(_Extra instance) => <String, dynamic>{
  'students_count': instance.studentsCount,
  'batch': instance.batch,
  'gender': instance.gender,
  'date_of_birth': instance.dateOfBirth,
  'relationship': instance.relationship,
};
