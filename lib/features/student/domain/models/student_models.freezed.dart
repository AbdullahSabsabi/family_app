// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentProfileResponse {

 bool? get status; String? get message; StudentData? get data;
/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileResponseCopyWith<StudentProfileResponse> get copyWith => _$StudentProfileResponseCopyWithImpl<StudentProfileResponse>(this as StudentProfileResponse, _$identity);

  /// Serializes this StudentProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'StudentProfileResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $StudentProfileResponseCopyWith<$Res>  {
  factory $StudentProfileResponseCopyWith(StudentProfileResponse value, $Res Function(StudentProfileResponse) _then) = _$StudentProfileResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, StudentData? data
});


$StudentDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$StudentProfileResponseCopyWithImpl<$Res>
    implements $StudentProfileResponseCopyWith<$Res> {
  _$StudentProfileResponseCopyWithImpl(this._self, this._then);

  final StudentProfileResponse _self;
  final $Res Function(StudentProfileResponse) _then;

/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StudentData?,
  ));
}
/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $StudentDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentProfileResponse].
extension StudentProfileResponsePatterns on StudentProfileResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _StudentProfileResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  StudentData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  StudentData? data)  $default,) {final _that = this;
switch (_that) {
case _StudentProfileResponse():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  StudentData? data)?  $default,) {final _that = this;
switch (_that) {
case _StudentProfileResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentProfileResponse implements StudentProfileResponse {
  const _StudentProfileResponse({this.status, this.message, this.data});
  factory _StudentProfileResponse.fromJson(Map<String, dynamic> json) => _$StudentProfileResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
@override final  StudentData? data;

/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentProfileResponseCopyWith<_StudentProfileResponse> get copyWith => __$StudentProfileResponseCopyWithImpl<_StudentProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'StudentProfileResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StudentProfileResponseCopyWith<$Res> implements $StudentProfileResponseCopyWith<$Res> {
  factory _$StudentProfileResponseCopyWith(_StudentProfileResponse value, $Res Function(_StudentProfileResponse) _then) = __$StudentProfileResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, StudentData? data
});


@override $StudentDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$StudentProfileResponseCopyWithImpl<$Res>
    implements _$StudentProfileResponseCopyWith<$Res> {
  __$StudentProfileResponseCopyWithImpl(this._self, this._then);

  final _StudentProfileResponse _self;
  final $Res Function(_StudentProfileResponse) _then;

/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_StudentProfileResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StudentData?,
  ));
}

/// Create a copy of StudentProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $StudentDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$StudentData {

 int? get id;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'profile_photo') String? get profilePhoto; Branch? get branch;@JsonKey(name: 'institute_branch') InstituteBranch? get instituteBranch; List<Batch>? get batches;@JsonKey(name: 'latest_attendance') Attendance? get latestAttendance;
/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentDataCopyWith<StudentData> get copyWith => _$StudentDataCopyWithImpl<StudentData>(this as StudentData, _$identity);

  /// Serializes this StudentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentData&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.profilePhoto, profilePhoto) || other.profilePhoto == profilePhoto)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.instituteBranch, instituteBranch) || other.instituteBranch == instituteBranch)&&const DeepCollectionEquality().equals(other.batches, batches)&&(identical(other.latestAttendance, latestAttendance) || other.latestAttendance == latestAttendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,profilePhoto,branch,instituteBranch,const DeepCollectionEquality().hash(batches),latestAttendance);

@override
String toString() {
  return 'StudentData(id: $id, fullName: $fullName, profilePhoto: $profilePhoto, branch: $branch, instituteBranch: $instituteBranch, batches: $batches, latestAttendance: $latestAttendance)';
}


}

/// @nodoc
abstract mixin class $StudentDataCopyWith<$Res>  {
  factory $StudentDataCopyWith(StudentData value, $Res Function(StudentData) _then) = _$StudentDataCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'profile_photo') String? profilePhoto, Branch? branch,@JsonKey(name: 'institute_branch') InstituteBranch? instituteBranch, List<Batch>? batches,@JsonKey(name: 'latest_attendance') Attendance? latestAttendance
});


$BranchCopyWith<$Res>? get branch;$InstituteBranchCopyWith<$Res>? get instituteBranch;$AttendanceCopyWith<$Res>? get latestAttendance;

}
/// @nodoc
class _$StudentDataCopyWithImpl<$Res>
    implements $StudentDataCopyWith<$Res> {
  _$StudentDataCopyWithImpl(this._self, this._then);

  final StudentData _self;
  final $Res Function(StudentData) _then;

/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fullName = freezed,Object? profilePhoto = freezed,Object? branch = freezed,Object? instituteBranch = freezed,Object? batches = freezed,Object? latestAttendance = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,profilePhoto: freezed == profilePhoto ? _self.profilePhoto : profilePhoto // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,instituteBranch: freezed == instituteBranch ? _self.instituteBranch : instituteBranch // ignore: cast_nullable_to_non_nullable
as InstituteBranch?,batches: freezed == batches ? _self.batches : batches // ignore: cast_nullable_to_non_nullable
as List<Batch>?,latestAttendance: freezed == latestAttendance ? _self.latestAttendance : latestAttendance // ignore: cast_nullable_to_non_nullable
as Attendance?,
  ));
}
/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstituteBranchCopyWith<$Res>? get instituteBranch {
    if (_self.instituteBranch == null) {
    return null;
  }

  return $InstituteBranchCopyWith<$Res>(_self.instituteBranch!, (value) {
    return _then(_self.copyWith(instituteBranch: value));
  });
}/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res>? get latestAttendance {
    if (_self.latestAttendance == null) {
    return null;
  }

  return $AttendanceCopyWith<$Res>(_self.latestAttendance!, (value) {
    return _then(_self.copyWith(latestAttendance: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentData].
extension StudentDataPatterns on StudentData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentData value)  $default,){
final _that = this;
switch (_that) {
case _StudentData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentData value)?  $default,){
final _that = this;
switch (_that) {
case _StudentData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'profile_photo')  String? profilePhoto,  Branch? branch, @JsonKey(name: 'institute_branch')  InstituteBranch? instituteBranch,  List<Batch>? batches, @JsonKey(name: 'latest_attendance')  Attendance? latestAttendance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentData() when $default != null:
return $default(_that.id,_that.fullName,_that.profilePhoto,_that.branch,_that.instituteBranch,_that.batches,_that.latestAttendance);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'profile_photo')  String? profilePhoto,  Branch? branch, @JsonKey(name: 'institute_branch')  InstituteBranch? instituteBranch,  List<Batch>? batches, @JsonKey(name: 'latest_attendance')  Attendance? latestAttendance)  $default,) {final _that = this;
switch (_that) {
case _StudentData():
return $default(_that.id,_that.fullName,_that.profilePhoto,_that.branch,_that.instituteBranch,_that.batches,_that.latestAttendance);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'profile_photo')  String? profilePhoto,  Branch? branch, @JsonKey(name: 'institute_branch')  InstituteBranch? instituteBranch,  List<Batch>? batches, @JsonKey(name: 'latest_attendance')  Attendance? latestAttendance)?  $default,) {final _that = this;
switch (_that) {
case _StudentData() when $default != null:
return $default(_that.id,_that.fullName,_that.profilePhoto,_that.branch,_that.instituteBranch,_that.batches,_that.latestAttendance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentData implements StudentData {
  const _StudentData({this.id, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'profile_photo') this.profilePhoto, this.branch, @JsonKey(name: 'institute_branch') this.instituteBranch, final  List<Batch>? batches, @JsonKey(name: 'latest_attendance') this.latestAttendance}): _batches = batches;
  factory _StudentData.fromJson(Map<String, dynamic> json) => _$StudentDataFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'profile_photo') final  String? profilePhoto;
@override final  Branch? branch;
@override@JsonKey(name: 'institute_branch') final  InstituteBranch? instituteBranch;
 final  List<Batch>? _batches;
@override List<Batch>? get batches {
  final value = _batches;
  if (value == null) return null;
  if (_batches is EqualUnmodifiableListView) return _batches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'latest_attendance') final  Attendance? latestAttendance;

/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentDataCopyWith<_StudentData> get copyWith => __$StudentDataCopyWithImpl<_StudentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentData&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.profilePhoto, profilePhoto) || other.profilePhoto == profilePhoto)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.instituteBranch, instituteBranch) || other.instituteBranch == instituteBranch)&&const DeepCollectionEquality().equals(other._batches, _batches)&&(identical(other.latestAttendance, latestAttendance) || other.latestAttendance == latestAttendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,profilePhoto,branch,instituteBranch,const DeepCollectionEquality().hash(_batches),latestAttendance);

@override
String toString() {
  return 'StudentData(id: $id, fullName: $fullName, profilePhoto: $profilePhoto, branch: $branch, instituteBranch: $instituteBranch, batches: $batches, latestAttendance: $latestAttendance)';
}


}

/// @nodoc
abstract mixin class _$StudentDataCopyWith<$Res> implements $StudentDataCopyWith<$Res> {
  factory _$StudentDataCopyWith(_StudentData value, $Res Function(_StudentData) _then) = __$StudentDataCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'profile_photo') String? profilePhoto, Branch? branch,@JsonKey(name: 'institute_branch') InstituteBranch? instituteBranch, List<Batch>? batches,@JsonKey(name: 'latest_attendance') Attendance? latestAttendance
});


@override $BranchCopyWith<$Res>? get branch;@override $InstituteBranchCopyWith<$Res>? get instituteBranch;@override $AttendanceCopyWith<$Res>? get latestAttendance;

}
/// @nodoc
class __$StudentDataCopyWithImpl<$Res>
    implements _$StudentDataCopyWith<$Res> {
  __$StudentDataCopyWithImpl(this._self, this._then);

  final _StudentData _self;
  final $Res Function(_StudentData) _then;

/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fullName = freezed,Object? profilePhoto = freezed,Object? branch = freezed,Object? instituteBranch = freezed,Object? batches = freezed,Object? latestAttendance = freezed,}) {
  return _then(_StudentData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,profilePhoto: freezed == profilePhoto ? _self.profilePhoto : profilePhoto // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,instituteBranch: freezed == instituteBranch ? _self.instituteBranch : instituteBranch // ignore: cast_nullable_to_non_nullable
as InstituteBranch?,batches: freezed == batches ? _self._batches : batches // ignore: cast_nullable_to_non_nullable
as List<Batch>?,latestAttendance: freezed == latestAttendance ? _self.latestAttendance : latestAttendance // ignore: cast_nullable_to_non_nullable
as Attendance?,
  ));
}

/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstituteBranchCopyWith<$Res>? get instituteBranch {
    if (_self.instituteBranch == null) {
    return null;
  }

  return $InstituteBranchCopyWith<$Res>(_self.instituteBranch!, (value) {
    return _then(_self.copyWith(instituteBranch: value));
  });
}/// Create a copy of StudentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res>? get latestAttendance {
    if (_self.latestAttendance == null) {
    return null;
  }

  return $AttendanceCopyWith<$Res>(_self.latestAttendance!, (value) {
    return _then(_self.copyWith(latestAttendance: value));
  });
}
}


/// @nodoc
mixin _$MonthlyEvaluationResponse {

 bool? get status; String? get message; EvaluationData? get data;
/// Create a copy of MonthlyEvaluationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyEvaluationResponseCopyWith<MonthlyEvaluationResponse> get copyWith => _$MonthlyEvaluationResponseCopyWithImpl<MonthlyEvaluationResponse>(this as MonthlyEvaluationResponse, _$identity);

  /// Serializes this MonthlyEvaluationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyEvaluationResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'MonthlyEvaluationResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $MonthlyEvaluationResponseCopyWith<$Res>  {
  factory $MonthlyEvaluationResponseCopyWith(MonthlyEvaluationResponse value, $Res Function(MonthlyEvaluationResponse) _then) = _$MonthlyEvaluationResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, EvaluationData? data
});


$EvaluationDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$MonthlyEvaluationResponseCopyWithImpl<$Res>
    implements $MonthlyEvaluationResponseCopyWith<$Res> {
  _$MonthlyEvaluationResponseCopyWithImpl(this._self, this._then);

  final MonthlyEvaluationResponse _self;
  final $Res Function(MonthlyEvaluationResponse) _then;

/// Create a copy of MonthlyEvaluationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EvaluationData?,
  ));
}
/// Create a copy of MonthlyEvaluationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvaluationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EvaluationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MonthlyEvaluationResponse].
extension MonthlyEvaluationResponsePatterns on MonthlyEvaluationResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyEvaluationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyEvaluationResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyEvaluationResponse value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyEvaluationResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyEvaluationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyEvaluationResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  EvaluationData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyEvaluationResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  EvaluationData? data)  $default,) {final _that = this;
switch (_that) {
case _MonthlyEvaluationResponse():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  EvaluationData? data)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyEvaluationResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyEvaluationResponse implements MonthlyEvaluationResponse {
  const _MonthlyEvaluationResponse({this.status, this.message, this.data});
  factory _MonthlyEvaluationResponse.fromJson(Map<String, dynamic> json) => _$MonthlyEvaluationResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
@override final  EvaluationData? data;

/// Create a copy of MonthlyEvaluationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyEvaluationResponseCopyWith<_MonthlyEvaluationResponse> get copyWith => __$MonthlyEvaluationResponseCopyWithImpl<_MonthlyEvaluationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyEvaluationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyEvaluationResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'MonthlyEvaluationResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MonthlyEvaluationResponseCopyWith<$Res> implements $MonthlyEvaluationResponseCopyWith<$Res> {
  factory _$MonthlyEvaluationResponseCopyWith(_MonthlyEvaluationResponse value, $Res Function(_MonthlyEvaluationResponse) _then) = __$MonthlyEvaluationResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, EvaluationData? data
});


@override $EvaluationDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$MonthlyEvaluationResponseCopyWithImpl<$Res>
    implements _$MonthlyEvaluationResponseCopyWith<$Res> {
  __$MonthlyEvaluationResponseCopyWithImpl(this._self, this._then);

  final _MonthlyEvaluationResponse _self;
  final $Res Function(_MonthlyEvaluationResponse) _then;

/// Create a copy of MonthlyEvaluationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_MonthlyEvaluationResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EvaluationData?,
  ));
}

/// Create a copy of MonthlyEvaluationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvaluationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EvaluationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$EvaluationData {

@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'student_name') String? get studentName; Map<String, dynamic>? get evaluations;
/// Create a copy of EvaluationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvaluationDataCopyWith<EvaluationData> get copyWith => _$EvaluationDataCopyWithImpl<EvaluationData>(this as EvaluationData, _$identity);

  /// Serializes this EvaluationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvaluationData&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&const DeepCollectionEquality().equals(other.evaluations, evaluations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentName,const DeepCollectionEquality().hash(evaluations));

@override
String toString() {
  return 'EvaluationData(studentId: $studentId, studentName: $studentName, evaluations: $evaluations)';
}


}

/// @nodoc
abstract mixin class $EvaluationDataCopyWith<$Res>  {
  factory $EvaluationDataCopyWith(EvaluationData value, $Res Function(EvaluationData) _then) = _$EvaluationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'student_name') String? studentName, Map<String, dynamic>? evaluations
});




}
/// @nodoc
class _$EvaluationDataCopyWithImpl<$Res>
    implements $EvaluationDataCopyWith<$Res> {
  _$EvaluationDataCopyWithImpl(this._self, this._then);

  final EvaluationData _self;
  final $Res Function(EvaluationData) _then;

/// Create a copy of EvaluationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? studentName = freezed,Object? evaluations = freezed,}) {
  return _then(_self.copyWith(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,evaluations: freezed == evaluations ? _self.evaluations : evaluations // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [EvaluationData].
extension EvaluationDataPatterns on EvaluationData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvaluationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvaluationData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvaluationData value)  $default,){
final _that = this;
switch (_that) {
case _EvaluationData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvaluationData value)?  $default,){
final _that = this;
switch (_that) {
case _EvaluationData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'student_name')  String? studentName,  Map<String, dynamic>? evaluations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvaluationData() when $default != null:
return $default(_that.studentId,_that.studentName,_that.evaluations);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'student_name')  String? studentName,  Map<String, dynamic>? evaluations)  $default,) {final _that = this;
switch (_that) {
case _EvaluationData():
return $default(_that.studentId,_that.studentName,_that.evaluations);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'student_name')  String? studentName,  Map<String, dynamic>? evaluations)?  $default,) {final _that = this;
switch (_that) {
case _EvaluationData() when $default != null:
return $default(_that.studentId,_that.studentName,_that.evaluations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvaluationData implements EvaluationData {
  const _EvaluationData({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'student_name') this.studentName, final  Map<String, dynamic>? evaluations}): _evaluations = evaluations;
  factory _EvaluationData.fromJson(Map<String, dynamic> json) => _$EvaluationDataFromJson(json);

@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'student_name') final  String? studentName;
 final  Map<String, dynamic>? _evaluations;
@override Map<String, dynamic>? get evaluations {
  final value = _evaluations;
  if (value == null) return null;
  if (_evaluations is EqualUnmodifiableMapView) return _evaluations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of EvaluationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvaluationDataCopyWith<_EvaluationData> get copyWith => __$EvaluationDataCopyWithImpl<_EvaluationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvaluationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvaluationData&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&const DeepCollectionEquality().equals(other._evaluations, _evaluations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentName,const DeepCollectionEquality().hash(_evaluations));

@override
String toString() {
  return 'EvaluationData(studentId: $studentId, studentName: $studentName, evaluations: $evaluations)';
}


}

/// @nodoc
abstract mixin class _$EvaluationDataCopyWith<$Res> implements $EvaluationDataCopyWith<$Res> {
  factory _$EvaluationDataCopyWith(_EvaluationData value, $Res Function(_EvaluationData) _then) = __$EvaluationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'student_name') String? studentName, Map<String, dynamic>? evaluations
});




}
/// @nodoc
class __$EvaluationDataCopyWithImpl<$Res>
    implements _$EvaluationDataCopyWith<$Res> {
  __$EvaluationDataCopyWithImpl(this._self, this._then);

  final _EvaluationData _self;
  final $Res Function(_EvaluationData) _then;

/// Create a copy of EvaluationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? studentName = freezed,Object? evaluations = freezed,}) {
  return _then(_EvaluationData(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,evaluations: freezed == evaluations ? _self._evaluations : evaluations // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$FinancialSummaryResponse {

 bool? get status; String? get message; FinancialData? get data;
/// Create a copy of FinancialSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialSummaryResponseCopyWith<FinancialSummaryResponse> get copyWith => _$FinancialSummaryResponseCopyWithImpl<FinancialSummaryResponse>(this as FinancialSummaryResponse, _$identity);

  /// Serializes this FinancialSummaryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialSummaryResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'FinancialSummaryResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $FinancialSummaryResponseCopyWith<$Res>  {
  factory $FinancialSummaryResponseCopyWith(FinancialSummaryResponse value, $Res Function(FinancialSummaryResponse) _then) = _$FinancialSummaryResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, FinancialData? data
});


$FinancialDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$FinancialSummaryResponseCopyWithImpl<$Res>
    implements $FinancialSummaryResponseCopyWith<$Res> {
  _$FinancialSummaryResponseCopyWithImpl(this._self, this._then);

  final FinancialSummaryResponse _self;
  final $Res Function(FinancialSummaryResponse) _then;

/// Create a copy of FinancialSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FinancialData?,
  ));
}
/// Create a copy of FinancialSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FinancialDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialSummaryResponse].
extension FinancialSummaryResponsePatterns on FinancialSummaryResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialSummaryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialSummaryResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialSummaryResponse value)  $default,){
final _that = this;
switch (_that) {
case _FinancialSummaryResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialSummaryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialSummaryResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  FinancialData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialSummaryResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  FinancialData? data)  $default,) {final _that = this;
switch (_that) {
case _FinancialSummaryResponse():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  FinancialData? data)?  $default,) {final _that = this;
switch (_that) {
case _FinancialSummaryResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialSummaryResponse implements FinancialSummaryResponse {
  const _FinancialSummaryResponse({this.status, this.message, this.data});
  factory _FinancialSummaryResponse.fromJson(Map<String, dynamic> json) => _$FinancialSummaryResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
@override final  FinancialData? data;

/// Create a copy of FinancialSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialSummaryResponseCopyWith<_FinancialSummaryResponse> get copyWith => __$FinancialSummaryResponseCopyWithImpl<_FinancialSummaryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialSummaryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialSummaryResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'FinancialSummaryResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FinancialSummaryResponseCopyWith<$Res> implements $FinancialSummaryResponseCopyWith<$Res> {
  factory _$FinancialSummaryResponseCopyWith(_FinancialSummaryResponse value, $Res Function(_FinancialSummaryResponse) _then) = __$FinancialSummaryResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, FinancialData? data
});


@override $FinancialDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$FinancialSummaryResponseCopyWithImpl<$Res>
    implements _$FinancialSummaryResponseCopyWith<$Res> {
  __$FinancialSummaryResponseCopyWithImpl(this._self, this._then);

  final _FinancialSummaryResponse _self;
  final $Res Function(_FinancialSummaryResponse) _then;

/// Create a copy of FinancialSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_FinancialSummaryResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FinancialData?,
  ));
}

/// Create a copy of FinancialSummaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $FinancialDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FinancialData {

@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'enrollment_contract') EnrollmentContract? get enrollmentContract; List<PaymentItem>? get payments;@JsonKey(name: 'pending_installments') List<Installment>? get pendingInstallments;
/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialDataCopyWith<FinancialData> get copyWith => _$FinancialDataCopyWithImpl<FinancialData>(this as FinancialData, _$identity);

  /// Serializes this FinancialData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialData&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.enrollmentContract, enrollmentContract) || other.enrollmentContract == enrollmentContract)&&const DeepCollectionEquality().equals(other.payments, payments)&&const DeepCollectionEquality().equals(other.pendingInstallments, pendingInstallments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,fullName,enrollmentContract,const DeepCollectionEquality().hash(payments),const DeepCollectionEquality().hash(pendingInstallments));

@override
String toString() {
  return 'FinancialData(studentId: $studentId, fullName: $fullName, enrollmentContract: $enrollmentContract, payments: $payments, pendingInstallments: $pendingInstallments)';
}


}

/// @nodoc
abstract mixin class $FinancialDataCopyWith<$Res>  {
  factory $FinancialDataCopyWith(FinancialData value, $Res Function(FinancialData) _then) = _$FinancialDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'enrollment_contract') EnrollmentContract? enrollmentContract, List<PaymentItem>? payments,@JsonKey(name: 'pending_installments') List<Installment>? pendingInstallments
});


$EnrollmentContractCopyWith<$Res>? get enrollmentContract;

}
/// @nodoc
class _$FinancialDataCopyWithImpl<$Res>
    implements $FinancialDataCopyWith<$Res> {
  _$FinancialDataCopyWithImpl(this._self, this._then);

  final FinancialData _self;
  final $Res Function(FinancialData) _then;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? fullName = freezed,Object? enrollmentContract = freezed,Object? payments = freezed,Object? pendingInstallments = freezed,}) {
  return _then(_self.copyWith(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,enrollmentContract: freezed == enrollmentContract ? _self.enrollmentContract : enrollmentContract // ignore: cast_nullable_to_non_nullable
as EnrollmentContract?,payments: freezed == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentItem>?,pendingInstallments: freezed == pendingInstallments ? _self.pendingInstallments : pendingInstallments // ignore: cast_nullable_to_non_nullable
as List<Installment>?,
  ));
}
/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EnrollmentContractCopyWith<$Res>? get enrollmentContract {
    if (_self.enrollmentContract == null) {
    return null;
  }

  return $EnrollmentContractCopyWith<$Res>(_self.enrollmentContract!, (value) {
    return _then(_self.copyWith(enrollmentContract: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialData].
extension FinancialDataPatterns on FinancialData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialData value)  $default,){
final _that = this;
switch (_that) {
case _FinancialData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialData value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'enrollment_contract')  EnrollmentContract? enrollmentContract,  List<PaymentItem>? payments, @JsonKey(name: 'pending_installments')  List<Installment>? pendingInstallments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
return $default(_that.studentId,_that.fullName,_that.enrollmentContract,_that.payments,_that.pendingInstallments);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'enrollment_contract')  EnrollmentContract? enrollmentContract,  List<PaymentItem>? payments, @JsonKey(name: 'pending_installments')  List<Installment>? pendingInstallments)  $default,) {final _that = this;
switch (_that) {
case _FinancialData():
return $default(_that.studentId,_that.fullName,_that.enrollmentContract,_that.payments,_that.pendingInstallments);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'enrollment_contract')  EnrollmentContract? enrollmentContract,  List<PaymentItem>? payments, @JsonKey(name: 'pending_installments')  List<Installment>? pendingInstallments)?  $default,) {final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
return $default(_that.studentId,_that.fullName,_that.enrollmentContract,_that.payments,_that.pendingInstallments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialData implements FinancialData {
  const _FinancialData({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'enrollment_contract') this.enrollmentContract, final  List<PaymentItem>? payments, @JsonKey(name: 'pending_installments') final  List<Installment>? pendingInstallments}): _payments = payments,_pendingInstallments = pendingInstallments;
  factory _FinancialData.fromJson(Map<String, dynamic> json) => _$FinancialDataFromJson(json);

@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'enrollment_contract') final  EnrollmentContract? enrollmentContract;
 final  List<PaymentItem>? _payments;
@override List<PaymentItem>? get payments {
  final value = _payments;
  if (value == null) return null;
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Installment>? _pendingInstallments;
@override@JsonKey(name: 'pending_installments') List<Installment>? get pendingInstallments {
  final value = _pendingInstallments;
  if (value == null) return null;
  if (_pendingInstallments is EqualUnmodifiableListView) return _pendingInstallments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialDataCopyWith<_FinancialData> get copyWith => __$FinancialDataCopyWithImpl<_FinancialData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialData&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.enrollmentContract, enrollmentContract) || other.enrollmentContract == enrollmentContract)&&const DeepCollectionEquality().equals(other._payments, _payments)&&const DeepCollectionEquality().equals(other._pendingInstallments, _pendingInstallments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,fullName,enrollmentContract,const DeepCollectionEquality().hash(_payments),const DeepCollectionEquality().hash(_pendingInstallments));

@override
String toString() {
  return 'FinancialData(studentId: $studentId, fullName: $fullName, enrollmentContract: $enrollmentContract, payments: $payments, pendingInstallments: $pendingInstallments)';
}


}

/// @nodoc
abstract mixin class _$FinancialDataCopyWith<$Res> implements $FinancialDataCopyWith<$Res> {
  factory _$FinancialDataCopyWith(_FinancialData value, $Res Function(_FinancialData) _then) = __$FinancialDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'enrollment_contract') EnrollmentContract? enrollmentContract, List<PaymentItem>? payments,@JsonKey(name: 'pending_installments') List<Installment>? pendingInstallments
});


@override $EnrollmentContractCopyWith<$Res>? get enrollmentContract;

}
/// @nodoc
class __$FinancialDataCopyWithImpl<$Res>
    implements _$FinancialDataCopyWith<$Res> {
  __$FinancialDataCopyWithImpl(this._self, this._then);

  final _FinancialData _self;
  final $Res Function(_FinancialData) _then;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? fullName = freezed,Object? enrollmentContract = freezed,Object? payments = freezed,Object? pendingInstallments = freezed,}) {
  return _then(_FinancialData(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,enrollmentContract: freezed == enrollmentContract ? _self.enrollmentContract : enrollmentContract // ignore: cast_nullable_to_non_nullable
as EnrollmentContract?,payments: freezed == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentItem>?,pendingInstallments: freezed == pendingInstallments ? _self._pendingInstallments : pendingInstallments // ignore: cast_nullable_to_non_nullable
as List<Installment>?,
  ));
}

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EnrollmentContractCopyWith<$Res>? get enrollmentContract {
    if (_self.enrollmentContract == null) {
    return null;
  }

  return $EnrollmentContractCopyWith<$Res>(_self.enrollmentContract!, (value) {
    return _then(_self.copyWith(enrollmentContract: value));
  });
}
}


/// @nodoc
mixin _$EnrollmentContract {

@JsonKey(name: 'contract_id') int? get contractId;@JsonKey(name: 'total_amount_usd') num? get totalAmountUsd;@JsonKey(name: 'paid_amount_usd') num? get paidAmountUsd;@JsonKey(name: 'remaining_amount_usd') num? get remainingAmountUsd;@JsonKey(name: 'discount_percentage') num? get discountPercentage;@JsonKey(name: 'discount_amount') num? get discountAmount;
/// Create a copy of EnrollmentContract
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentContractCopyWith<EnrollmentContract> get copyWith => _$EnrollmentContractCopyWithImpl<EnrollmentContract>(this as EnrollmentContract, _$identity);

  /// Serializes this EnrollmentContract to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentContract&&(identical(other.contractId, contractId) || other.contractId == contractId)&&(identical(other.totalAmountUsd, totalAmountUsd) || other.totalAmountUsd == totalAmountUsd)&&(identical(other.paidAmountUsd, paidAmountUsd) || other.paidAmountUsd == paidAmountUsd)&&(identical(other.remainingAmountUsd, remainingAmountUsd) || other.remainingAmountUsd == remainingAmountUsd)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contractId,totalAmountUsd,paidAmountUsd,remainingAmountUsd,discountPercentage,discountAmount);

@override
String toString() {
  return 'EnrollmentContract(contractId: $contractId, totalAmountUsd: $totalAmountUsd, paidAmountUsd: $paidAmountUsd, remainingAmountUsd: $remainingAmountUsd, discountPercentage: $discountPercentage, discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class $EnrollmentContractCopyWith<$Res>  {
  factory $EnrollmentContractCopyWith(EnrollmentContract value, $Res Function(EnrollmentContract) _then) = _$EnrollmentContractCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contract_id') int? contractId,@JsonKey(name: 'total_amount_usd') num? totalAmountUsd,@JsonKey(name: 'paid_amount_usd') num? paidAmountUsd,@JsonKey(name: 'remaining_amount_usd') num? remainingAmountUsd,@JsonKey(name: 'discount_percentage') num? discountPercentage,@JsonKey(name: 'discount_amount') num? discountAmount
});




}
/// @nodoc
class _$EnrollmentContractCopyWithImpl<$Res>
    implements $EnrollmentContractCopyWith<$Res> {
  _$EnrollmentContractCopyWithImpl(this._self, this._then);

  final EnrollmentContract _self;
  final $Res Function(EnrollmentContract) _then;

/// Create a copy of EnrollmentContract
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contractId = freezed,Object? totalAmountUsd = freezed,Object? paidAmountUsd = freezed,Object? remainingAmountUsd = freezed,Object? discountPercentage = freezed,Object? discountAmount = freezed,}) {
  return _then(_self.copyWith(
contractId: freezed == contractId ? _self.contractId : contractId // ignore: cast_nullable_to_non_nullable
as int?,totalAmountUsd: freezed == totalAmountUsd ? _self.totalAmountUsd : totalAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,paidAmountUsd: freezed == paidAmountUsd ? _self.paidAmountUsd : paidAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,remainingAmountUsd: freezed == remainingAmountUsd ? _self.remainingAmountUsd : remainingAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,discountPercentage: freezed == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as num?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrollmentContract].
extension EnrollmentContractPatterns on EnrollmentContract {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrollmentContract value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollmentContract() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrollmentContract value)  $default,){
final _that = this;
switch (_that) {
case _EnrollmentContract():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrollmentContract value)?  $default,){
final _that = this;
switch (_that) {
case _EnrollmentContract() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'contract_id')  int? contractId, @JsonKey(name: 'total_amount_usd')  num? totalAmountUsd, @JsonKey(name: 'paid_amount_usd')  num? paidAmountUsd, @JsonKey(name: 'remaining_amount_usd')  num? remainingAmountUsd, @JsonKey(name: 'discount_percentage')  num? discountPercentage, @JsonKey(name: 'discount_amount')  num? discountAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollmentContract() when $default != null:
return $default(_that.contractId,_that.totalAmountUsd,_that.paidAmountUsd,_that.remainingAmountUsd,_that.discountPercentage,_that.discountAmount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'contract_id')  int? contractId, @JsonKey(name: 'total_amount_usd')  num? totalAmountUsd, @JsonKey(name: 'paid_amount_usd')  num? paidAmountUsd, @JsonKey(name: 'remaining_amount_usd')  num? remainingAmountUsd, @JsonKey(name: 'discount_percentage')  num? discountPercentage, @JsonKey(name: 'discount_amount')  num? discountAmount)  $default,) {final _that = this;
switch (_that) {
case _EnrollmentContract():
return $default(_that.contractId,_that.totalAmountUsd,_that.paidAmountUsd,_that.remainingAmountUsd,_that.discountPercentage,_that.discountAmount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'contract_id')  int? contractId, @JsonKey(name: 'total_amount_usd')  num? totalAmountUsd, @JsonKey(name: 'paid_amount_usd')  num? paidAmountUsd, @JsonKey(name: 'remaining_amount_usd')  num? remainingAmountUsd, @JsonKey(name: 'discount_percentage')  num? discountPercentage, @JsonKey(name: 'discount_amount')  num? discountAmount)?  $default,) {final _that = this;
switch (_that) {
case _EnrollmentContract() when $default != null:
return $default(_that.contractId,_that.totalAmountUsd,_that.paidAmountUsd,_that.remainingAmountUsd,_that.discountPercentage,_that.discountAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnrollmentContract implements EnrollmentContract {
  const _EnrollmentContract({@JsonKey(name: 'contract_id') this.contractId, @JsonKey(name: 'total_amount_usd') this.totalAmountUsd, @JsonKey(name: 'paid_amount_usd') this.paidAmountUsd, @JsonKey(name: 'remaining_amount_usd') this.remainingAmountUsd, @JsonKey(name: 'discount_percentage') this.discountPercentage, @JsonKey(name: 'discount_amount') this.discountAmount});
  factory _EnrollmentContract.fromJson(Map<String, dynamic> json) => _$EnrollmentContractFromJson(json);

@override@JsonKey(name: 'contract_id') final  int? contractId;
@override@JsonKey(name: 'total_amount_usd') final  num? totalAmountUsd;
@override@JsonKey(name: 'paid_amount_usd') final  num? paidAmountUsd;
@override@JsonKey(name: 'remaining_amount_usd') final  num? remainingAmountUsd;
@override@JsonKey(name: 'discount_percentage') final  num? discountPercentage;
@override@JsonKey(name: 'discount_amount') final  num? discountAmount;

/// Create a copy of EnrollmentContract
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentContractCopyWith<_EnrollmentContract> get copyWith => __$EnrollmentContractCopyWithImpl<_EnrollmentContract>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollmentContractToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentContract&&(identical(other.contractId, contractId) || other.contractId == contractId)&&(identical(other.totalAmountUsd, totalAmountUsd) || other.totalAmountUsd == totalAmountUsd)&&(identical(other.paidAmountUsd, paidAmountUsd) || other.paidAmountUsd == paidAmountUsd)&&(identical(other.remainingAmountUsd, remainingAmountUsd) || other.remainingAmountUsd == remainingAmountUsd)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contractId,totalAmountUsd,paidAmountUsd,remainingAmountUsd,discountPercentage,discountAmount);

@override
String toString() {
  return 'EnrollmentContract(contractId: $contractId, totalAmountUsd: $totalAmountUsd, paidAmountUsd: $paidAmountUsd, remainingAmountUsd: $remainingAmountUsd, discountPercentage: $discountPercentage, discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentContractCopyWith<$Res> implements $EnrollmentContractCopyWith<$Res> {
  factory _$EnrollmentContractCopyWith(_EnrollmentContract value, $Res Function(_EnrollmentContract) _then) = __$EnrollmentContractCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'contract_id') int? contractId,@JsonKey(name: 'total_amount_usd') num? totalAmountUsd,@JsonKey(name: 'paid_amount_usd') num? paidAmountUsd,@JsonKey(name: 'remaining_amount_usd') num? remainingAmountUsd,@JsonKey(name: 'discount_percentage') num? discountPercentage,@JsonKey(name: 'discount_amount') num? discountAmount
});




}
/// @nodoc
class __$EnrollmentContractCopyWithImpl<$Res>
    implements _$EnrollmentContractCopyWith<$Res> {
  __$EnrollmentContractCopyWithImpl(this._self, this._then);

  final _EnrollmentContract _self;
  final $Res Function(_EnrollmentContract) _then;

/// Create a copy of EnrollmentContract
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contractId = freezed,Object? totalAmountUsd = freezed,Object? paidAmountUsd = freezed,Object? remainingAmountUsd = freezed,Object? discountPercentage = freezed,Object? discountAmount = freezed,}) {
  return _then(_EnrollmentContract(
contractId: freezed == contractId ? _self.contractId : contractId // ignore: cast_nullable_to_non_nullable
as int?,totalAmountUsd: freezed == totalAmountUsd ? _self.totalAmountUsd : totalAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,paidAmountUsd: freezed == paidAmountUsd ? _self.paidAmountUsd : paidAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,remainingAmountUsd: freezed == remainingAmountUsd ? _self.remainingAmountUsd : remainingAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,discountPercentage: freezed == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as num?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$PaymentItem {

 int? get id;@JsonKey(name: 'receipt_number') String? get receiptNumber;@JsonKey(name: 'amount_usd') num? get amountUsd;@JsonKey(name: 'paid_date') String? get paidDate; String? get note;
/// Create a copy of PaymentItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentItemCopyWith<PaymentItem> get copyWith => _$PaymentItemCopyWithImpl<PaymentItem>(this as PaymentItem, _$identity);

  /// Serializes this PaymentItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentItem&&(identical(other.id, id) || other.id == id)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amountUsd, amountUsd) || other.amountUsd == amountUsd)&&(identical(other.paidDate, paidDate) || other.paidDate == paidDate)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,receiptNumber,amountUsd,paidDate,note);

@override
String toString() {
  return 'PaymentItem(id: $id, receiptNumber: $receiptNumber, amountUsd: $amountUsd, paidDate: $paidDate, note: $note)';
}


}

/// @nodoc
abstract mixin class $PaymentItemCopyWith<$Res>  {
  factory $PaymentItemCopyWith(PaymentItem value, $Res Function(PaymentItem) _then) = _$PaymentItemCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'receipt_number') String? receiptNumber,@JsonKey(name: 'amount_usd') num? amountUsd,@JsonKey(name: 'paid_date') String? paidDate, String? note
});




}
/// @nodoc
class _$PaymentItemCopyWithImpl<$Res>
    implements $PaymentItemCopyWith<$Res> {
  _$PaymentItemCopyWithImpl(this._self, this._then);

  final PaymentItem _self;
  final $Res Function(PaymentItem) _then;

/// Create a copy of PaymentItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? receiptNumber = freezed,Object? amountUsd = freezed,Object? paidDate = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,receiptNumber: freezed == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String?,amountUsd: freezed == amountUsd ? _self.amountUsd : amountUsd // ignore: cast_nullable_to_non_nullable
as num?,paidDate: freezed == paidDate ? _self.paidDate : paidDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentItem].
extension PaymentItemPatterns on PaymentItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentItem value)  $default,){
final _that = this;
switch (_that) {
case _PaymentItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentItem value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'receipt_number')  String? receiptNumber, @JsonKey(name: 'amount_usd')  num? amountUsd, @JsonKey(name: 'paid_date')  String? paidDate,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentItem() when $default != null:
return $default(_that.id,_that.receiptNumber,_that.amountUsd,_that.paidDate,_that.note);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'receipt_number')  String? receiptNumber, @JsonKey(name: 'amount_usd')  num? amountUsd, @JsonKey(name: 'paid_date')  String? paidDate,  String? note)  $default,) {final _that = this;
switch (_that) {
case _PaymentItem():
return $default(_that.id,_that.receiptNumber,_that.amountUsd,_that.paidDate,_that.note);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'receipt_number')  String? receiptNumber, @JsonKey(name: 'amount_usd')  num? amountUsd, @JsonKey(name: 'paid_date')  String? paidDate,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _PaymentItem() when $default != null:
return $default(_that.id,_that.receiptNumber,_that.amountUsd,_that.paidDate,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentItem implements PaymentItem {
  const _PaymentItem({this.id, @JsonKey(name: 'receipt_number') this.receiptNumber, @JsonKey(name: 'amount_usd') this.amountUsd, @JsonKey(name: 'paid_date') this.paidDate, this.note});
  factory _PaymentItem.fromJson(Map<String, dynamic> json) => _$PaymentItemFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'receipt_number') final  String? receiptNumber;
@override@JsonKey(name: 'amount_usd') final  num? amountUsd;
@override@JsonKey(name: 'paid_date') final  String? paidDate;
@override final  String? note;

/// Create a copy of PaymentItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentItemCopyWith<_PaymentItem> get copyWith => __$PaymentItemCopyWithImpl<_PaymentItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentItem&&(identical(other.id, id) || other.id == id)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amountUsd, amountUsd) || other.amountUsd == amountUsd)&&(identical(other.paidDate, paidDate) || other.paidDate == paidDate)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,receiptNumber,amountUsd,paidDate,note);

@override
String toString() {
  return 'PaymentItem(id: $id, receiptNumber: $receiptNumber, amountUsd: $amountUsd, paidDate: $paidDate, note: $note)';
}


}

/// @nodoc
abstract mixin class _$PaymentItemCopyWith<$Res> implements $PaymentItemCopyWith<$Res> {
  factory _$PaymentItemCopyWith(_PaymentItem value, $Res Function(_PaymentItem) _then) = __$PaymentItemCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'receipt_number') String? receiptNumber,@JsonKey(name: 'amount_usd') num? amountUsd,@JsonKey(name: 'paid_date') String? paidDate, String? note
});




}
/// @nodoc
class __$PaymentItemCopyWithImpl<$Res>
    implements _$PaymentItemCopyWith<$Res> {
  __$PaymentItemCopyWithImpl(this._self, this._then);

  final _PaymentItem _self;
  final $Res Function(_PaymentItem) _then;

/// Create a copy of PaymentItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? receiptNumber = freezed,Object? amountUsd = freezed,Object? paidDate = freezed,Object? note = freezed,}) {
  return _then(_PaymentItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,receiptNumber: freezed == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String?,amountUsd: freezed == amountUsd ? _self.amountUsd : amountUsd // ignore: cast_nullable_to_non_nullable
as num?,paidDate: freezed == paidDate ? _self.paidDate : paidDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Installment {

 int? get id;@JsonKey(name: 'installment_number') int? get installmentNumber;@JsonKey(name: 'due_date') String? get dueDate;@JsonKey(name: 'planned_amount_usd') num? get plannedAmountUsd;@JsonKey(name: 'paid_amount_usd') num? get paidAmountUsd;@JsonKey(name: 'remaining_amount_usd') num? get remainingAmountUsd; String? get status;
/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstallmentCopyWith<Installment> get copyWith => _$InstallmentCopyWithImpl<Installment>(this as Installment, _$identity);

  /// Serializes this Installment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Installment&&(identical(other.id, id) || other.id == id)&&(identical(other.installmentNumber, installmentNumber) || other.installmentNumber == installmentNumber)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.plannedAmountUsd, plannedAmountUsd) || other.plannedAmountUsd == plannedAmountUsd)&&(identical(other.paidAmountUsd, paidAmountUsd) || other.paidAmountUsd == paidAmountUsd)&&(identical(other.remainingAmountUsd, remainingAmountUsd) || other.remainingAmountUsd == remainingAmountUsd)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,installmentNumber,dueDate,plannedAmountUsd,paidAmountUsd,remainingAmountUsd,status);

@override
String toString() {
  return 'Installment(id: $id, installmentNumber: $installmentNumber, dueDate: $dueDate, plannedAmountUsd: $plannedAmountUsd, paidAmountUsd: $paidAmountUsd, remainingAmountUsd: $remainingAmountUsd, status: $status)';
}


}

/// @nodoc
abstract mixin class $InstallmentCopyWith<$Res>  {
  factory $InstallmentCopyWith(Installment value, $Res Function(Installment) _then) = _$InstallmentCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'installment_number') int? installmentNumber,@JsonKey(name: 'due_date') String? dueDate,@JsonKey(name: 'planned_amount_usd') num? plannedAmountUsd,@JsonKey(name: 'paid_amount_usd') num? paidAmountUsd,@JsonKey(name: 'remaining_amount_usd') num? remainingAmountUsd, String? status
});




}
/// @nodoc
class _$InstallmentCopyWithImpl<$Res>
    implements $InstallmentCopyWith<$Res> {
  _$InstallmentCopyWithImpl(this._self, this._then);

  final Installment _self;
  final $Res Function(Installment) _then;

/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? installmentNumber = freezed,Object? dueDate = freezed,Object? plannedAmountUsd = freezed,Object? paidAmountUsd = freezed,Object? remainingAmountUsd = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,installmentNumber: freezed == installmentNumber ? _self.installmentNumber : installmentNumber // ignore: cast_nullable_to_non_nullable
as int?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,plannedAmountUsd: freezed == plannedAmountUsd ? _self.plannedAmountUsd : plannedAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,paidAmountUsd: freezed == paidAmountUsd ? _self.paidAmountUsd : paidAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,remainingAmountUsd: freezed == remainingAmountUsd ? _self.remainingAmountUsd : remainingAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Installment].
extension InstallmentPatterns on Installment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Installment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Installment value)  $default,){
final _that = this;
switch (_that) {
case _Installment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Installment value)?  $default,){
final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'installment_number')  int? installmentNumber, @JsonKey(name: 'due_date')  String? dueDate, @JsonKey(name: 'planned_amount_usd')  num? plannedAmountUsd, @JsonKey(name: 'paid_amount_usd')  num? paidAmountUsd, @JsonKey(name: 'remaining_amount_usd')  num? remainingAmountUsd,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that.id,_that.installmentNumber,_that.dueDate,_that.plannedAmountUsd,_that.paidAmountUsd,_that.remainingAmountUsd,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'installment_number')  int? installmentNumber, @JsonKey(name: 'due_date')  String? dueDate, @JsonKey(name: 'planned_amount_usd')  num? plannedAmountUsd, @JsonKey(name: 'paid_amount_usd')  num? paidAmountUsd, @JsonKey(name: 'remaining_amount_usd')  num? remainingAmountUsd,  String? status)  $default,) {final _that = this;
switch (_that) {
case _Installment():
return $default(_that.id,_that.installmentNumber,_that.dueDate,_that.plannedAmountUsd,_that.paidAmountUsd,_that.remainingAmountUsd,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'installment_number')  int? installmentNumber, @JsonKey(name: 'due_date')  String? dueDate, @JsonKey(name: 'planned_amount_usd')  num? plannedAmountUsd, @JsonKey(name: 'paid_amount_usd')  num? paidAmountUsd, @JsonKey(name: 'remaining_amount_usd')  num? remainingAmountUsd,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that.id,_that.installmentNumber,_that.dueDate,_that.plannedAmountUsd,_that.paidAmountUsd,_that.remainingAmountUsd,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Installment implements Installment {
  const _Installment({this.id, @JsonKey(name: 'installment_number') this.installmentNumber, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'planned_amount_usd') this.plannedAmountUsd, @JsonKey(name: 'paid_amount_usd') this.paidAmountUsd, @JsonKey(name: 'remaining_amount_usd') this.remainingAmountUsd, this.status});
  factory _Installment.fromJson(Map<String, dynamic> json) => _$InstallmentFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'installment_number') final  int? installmentNumber;
@override@JsonKey(name: 'due_date') final  String? dueDate;
@override@JsonKey(name: 'planned_amount_usd') final  num? plannedAmountUsd;
@override@JsonKey(name: 'paid_amount_usd') final  num? paidAmountUsd;
@override@JsonKey(name: 'remaining_amount_usd') final  num? remainingAmountUsd;
@override final  String? status;

/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstallmentCopyWith<_Installment> get copyWith => __$InstallmentCopyWithImpl<_Installment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstallmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Installment&&(identical(other.id, id) || other.id == id)&&(identical(other.installmentNumber, installmentNumber) || other.installmentNumber == installmentNumber)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.plannedAmountUsd, plannedAmountUsd) || other.plannedAmountUsd == plannedAmountUsd)&&(identical(other.paidAmountUsd, paidAmountUsd) || other.paidAmountUsd == paidAmountUsd)&&(identical(other.remainingAmountUsd, remainingAmountUsd) || other.remainingAmountUsd == remainingAmountUsd)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,installmentNumber,dueDate,plannedAmountUsd,paidAmountUsd,remainingAmountUsd,status);

@override
String toString() {
  return 'Installment(id: $id, installmentNumber: $installmentNumber, dueDate: $dueDate, plannedAmountUsd: $plannedAmountUsd, paidAmountUsd: $paidAmountUsd, remainingAmountUsd: $remainingAmountUsd, status: $status)';
}


}

/// @nodoc
abstract mixin class _$InstallmentCopyWith<$Res> implements $InstallmentCopyWith<$Res> {
  factory _$InstallmentCopyWith(_Installment value, $Res Function(_Installment) _then) = __$InstallmentCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'installment_number') int? installmentNumber,@JsonKey(name: 'due_date') String? dueDate,@JsonKey(name: 'planned_amount_usd') num? plannedAmountUsd,@JsonKey(name: 'paid_amount_usd') num? paidAmountUsd,@JsonKey(name: 'remaining_amount_usd') num? remainingAmountUsd, String? status
});




}
/// @nodoc
class __$InstallmentCopyWithImpl<$Res>
    implements _$InstallmentCopyWith<$Res> {
  __$InstallmentCopyWithImpl(this._self, this._then);

  final _Installment _self;
  final $Res Function(_Installment) _then;

/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? installmentNumber = freezed,Object? dueDate = freezed,Object? plannedAmountUsd = freezed,Object? paidAmountUsd = freezed,Object? remainingAmountUsd = freezed,Object? status = freezed,}) {
  return _then(_Installment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,installmentNumber: freezed == installmentNumber ? _self.installmentNumber : installmentNumber // ignore: cast_nullable_to_non_nullable
as int?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,plannedAmountUsd: freezed == plannedAmountUsd ? _self.plannedAmountUsd : plannedAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,paidAmountUsd: freezed == paidAmountUsd ? _self.paidAmountUsd : paidAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,remainingAmountUsd: freezed == remainingAmountUsd ? _self.remainingAmountUsd : remainingAmountUsd // ignore: cast_nullable_to_non_nullable
as num?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ExamResponse {

 bool? get status; String? get message; ExamData? get data;
/// Create a copy of ExamResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamResponseCopyWith<ExamResponse> get copyWith => _$ExamResponseCopyWithImpl<ExamResponse>(this as ExamResponse, _$identity);

  /// Serializes this ExamResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'ExamResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ExamResponseCopyWith<$Res>  {
  factory $ExamResponseCopyWith(ExamResponse value, $Res Function(ExamResponse) _then) = _$ExamResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, ExamData? data
});


$ExamDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ExamResponseCopyWithImpl<$Res>
    implements $ExamResponseCopyWith<$Res> {
  _$ExamResponseCopyWithImpl(this._self, this._then);

  final ExamResponse _self;
  final $Res Function(ExamResponse) _then;

/// Create a copy of ExamResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ExamData?,
  ));
}
/// Create a copy of ExamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ExamDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExamResponse].
extension ExamResponsePatterns on ExamResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamResponse value)  $default,){
final _that = this;
switch (_that) {
case _ExamResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ExamResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  ExamData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  ExamData? data)  $default,) {final _that = this;
switch (_that) {
case _ExamResponse():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  ExamData? data)?  $default,) {final _that = this;
switch (_that) {
case _ExamResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamResponse implements ExamResponse {
  const _ExamResponse({this.status, this.message, this.data});
  factory _ExamResponse.fromJson(Map<String, dynamic> json) => _$ExamResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
@override final  ExamData? data;

/// Create a copy of ExamResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamResponseCopyWith<_ExamResponse> get copyWith => __$ExamResponseCopyWithImpl<_ExamResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'ExamResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ExamResponseCopyWith<$Res> implements $ExamResponseCopyWith<$Res> {
  factory _$ExamResponseCopyWith(_ExamResponse value, $Res Function(_ExamResponse) _then) = __$ExamResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, ExamData? data
});


@override $ExamDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ExamResponseCopyWithImpl<$Res>
    implements _$ExamResponseCopyWith<$Res> {
  __$ExamResponseCopyWithImpl(this._self, this._then);

  final _ExamResponse _self;
  final $Res Function(_ExamResponse) _then;

/// Create a copy of ExamResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_ExamResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ExamData?,
  ));
}

/// Create a copy of ExamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ExamDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ExamData {

@JsonKey(name: 'current_week') List<ExamModel>? get currentWeek;@JsonKey(name: 'last_week') List<ExamModel>? get lastWeek;
/// Create a copy of ExamData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamDataCopyWith<ExamData> get copyWith => _$ExamDataCopyWithImpl<ExamData>(this as ExamData, _$identity);

  /// Serializes this ExamData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamData&&const DeepCollectionEquality().equals(other.currentWeek, currentWeek)&&const DeepCollectionEquality().equals(other.lastWeek, lastWeek));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currentWeek),const DeepCollectionEquality().hash(lastWeek));

@override
String toString() {
  return 'ExamData(currentWeek: $currentWeek, lastWeek: $lastWeek)';
}


}

/// @nodoc
abstract mixin class $ExamDataCopyWith<$Res>  {
  factory $ExamDataCopyWith(ExamData value, $Res Function(ExamData) _then) = _$ExamDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_week') List<ExamModel>? currentWeek,@JsonKey(name: 'last_week') List<ExamModel>? lastWeek
});




}
/// @nodoc
class _$ExamDataCopyWithImpl<$Res>
    implements $ExamDataCopyWith<$Res> {
  _$ExamDataCopyWithImpl(this._self, this._then);

  final ExamData _self;
  final $Res Function(ExamData) _then;

/// Create a copy of ExamData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentWeek = freezed,Object? lastWeek = freezed,}) {
  return _then(_self.copyWith(
currentWeek: freezed == currentWeek ? _self.currentWeek : currentWeek // ignore: cast_nullable_to_non_nullable
as List<ExamModel>?,lastWeek: freezed == lastWeek ? _self.lastWeek : lastWeek // ignore: cast_nullable_to_non_nullable
as List<ExamModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamData].
extension ExamDataPatterns on ExamData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamData value)  $default,){
final _that = this;
switch (_that) {
case _ExamData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamData value)?  $default,){
final _that = this;
switch (_that) {
case _ExamData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_week')  List<ExamModel>? currentWeek, @JsonKey(name: 'last_week')  List<ExamModel>? lastWeek)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamData() when $default != null:
return $default(_that.currentWeek,_that.lastWeek);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_week')  List<ExamModel>? currentWeek, @JsonKey(name: 'last_week')  List<ExamModel>? lastWeek)  $default,) {final _that = this;
switch (_that) {
case _ExamData():
return $default(_that.currentWeek,_that.lastWeek);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_week')  List<ExamModel>? currentWeek, @JsonKey(name: 'last_week')  List<ExamModel>? lastWeek)?  $default,) {final _that = this;
switch (_that) {
case _ExamData() when $default != null:
return $default(_that.currentWeek,_that.lastWeek);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamData implements ExamData {
  const _ExamData({@JsonKey(name: 'current_week') final  List<ExamModel>? currentWeek, @JsonKey(name: 'last_week') final  List<ExamModel>? lastWeek}): _currentWeek = currentWeek,_lastWeek = lastWeek;
  factory _ExamData.fromJson(Map<String, dynamic> json) => _$ExamDataFromJson(json);

 final  List<ExamModel>? _currentWeek;
@override@JsonKey(name: 'current_week') List<ExamModel>? get currentWeek {
  final value = _currentWeek;
  if (value == null) return null;
  if (_currentWeek is EqualUnmodifiableListView) return _currentWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ExamModel>? _lastWeek;
@override@JsonKey(name: 'last_week') List<ExamModel>? get lastWeek {
  final value = _lastWeek;
  if (value == null) return null;
  if (_lastWeek is EqualUnmodifiableListView) return _lastWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ExamData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamDataCopyWith<_ExamData> get copyWith => __$ExamDataCopyWithImpl<_ExamData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamData&&const DeepCollectionEquality().equals(other._currentWeek, _currentWeek)&&const DeepCollectionEquality().equals(other._lastWeek, _lastWeek));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currentWeek),const DeepCollectionEquality().hash(_lastWeek));

@override
String toString() {
  return 'ExamData(currentWeek: $currentWeek, lastWeek: $lastWeek)';
}


}

/// @nodoc
abstract mixin class _$ExamDataCopyWith<$Res> implements $ExamDataCopyWith<$Res> {
  factory _$ExamDataCopyWith(_ExamData value, $Res Function(_ExamData) _then) = __$ExamDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_week') List<ExamModel>? currentWeek,@JsonKey(name: 'last_week') List<ExamModel>? lastWeek
});




}
/// @nodoc
class __$ExamDataCopyWithImpl<$Res>
    implements _$ExamDataCopyWith<$Res> {
  __$ExamDataCopyWithImpl(this._self, this._then);

  final _ExamData _self;
  final $Res Function(_ExamData) _then;

/// Create a copy of ExamData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentWeek = freezed,Object? lastWeek = freezed,}) {
  return _then(_ExamData(
currentWeek: freezed == currentWeek ? _self._currentWeek : currentWeek // ignore: cast_nullable_to_non_nullable
as List<ExamModel>?,lastWeek: freezed == lastWeek ? _self._lastWeek : lastWeek // ignore: cast_nullable_to_non_nullable
as List<ExamModel>?,
  ));
}


}


/// @nodoc
mixin _$ExamModel {

 int? get id;@JsonKey(name: 'exam_id') int? get examId;@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'obtained_marks') String? get mark;@JsonKey(name: 'is_passed') int? get isPassed; String? get remarks;@JsonKey(name: 'subject_name') String? get subject;@JsonKey(name: 'created_at') String? get date;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamModelCopyWith<ExamModel> get copyWith => _$ExamModelCopyWithImpl<ExamModel>(this as ExamModel, _$identity);

  /// Serializes this ExamModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamModel&&(identical(other.id, id) || other.id == id)&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.mark, mark) || other.mark == mark)&&(identical(other.isPassed, isPassed) || other.isPassed == isPassed)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.date, date) || other.date == date)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,examId,studentId,mark,isPassed,remarks,subject,date,updatedAt);

@override
String toString() {
  return 'ExamModel(id: $id, examId: $examId, studentId: $studentId, mark: $mark, isPassed: $isPassed, remarks: $remarks, subject: $subject, date: $date, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ExamModelCopyWith<$Res>  {
  factory $ExamModelCopyWith(ExamModel value, $Res Function(ExamModel) _then) = _$ExamModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'exam_id') int? examId,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'obtained_marks') String? mark,@JsonKey(name: 'is_passed') int? isPassed, String? remarks,@JsonKey(name: 'subject_name') String? subject,@JsonKey(name: 'created_at') String? date,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$ExamModelCopyWithImpl<$Res>
    implements $ExamModelCopyWith<$Res> {
  _$ExamModelCopyWithImpl(this._self, this._then);

  final ExamModel _self;
  final $Res Function(ExamModel) _then;

/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? examId = freezed,Object? studentId = freezed,Object? mark = freezed,Object? isPassed = freezed,Object? remarks = freezed,Object? subject = freezed,Object? date = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,examId: freezed == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,mark: freezed == mark ? _self.mark : mark // ignore: cast_nullable_to_non_nullable
as String?,isPassed: freezed == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as int?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamModel].
extension ExamModelPatterns on ExamModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamModel value)  $default,){
final _that = this;
switch (_that) {
case _ExamModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExamModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'exam_id')  int? examId, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'obtained_marks')  String? mark, @JsonKey(name: 'is_passed')  int? isPassed,  String? remarks, @JsonKey(name: 'subject_name')  String? subject, @JsonKey(name: 'created_at')  String? date, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamModel() when $default != null:
return $default(_that.id,_that.examId,_that.studentId,_that.mark,_that.isPassed,_that.remarks,_that.subject,_that.date,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'exam_id')  int? examId, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'obtained_marks')  String? mark, @JsonKey(name: 'is_passed')  int? isPassed,  String? remarks, @JsonKey(name: 'subject_name')  String? subject, @JsonKey(name: 'created_at')  String? date, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ExamModel():
return $default(_that.id,_that.examId,_that.studentId,_that.mark,_that.isPassed,_that.remarks,_that.subject,_that.date,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'exam_id')  int? examId, @JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'obtained_marks')  String? mark, @JsonKey(name: 'is_passed')  int? isPassed,  String? remarks, @JsonKey(name: 'subject_name')  String? subject, @JsonKey(name: 'created_at')  String? date, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ExamModel() when $default != null:
return $default(_that.id,_that.examId,_that.studentId,_that.mark,_that.isPassed,_that.remarks,_that.subject,_that.date,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamModel implements ExamModel {
  const _ExamModel({this.id, @JsonKey(name: 'exam_id') this.examId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'obtained_marks') this.mark, @JsonKey(name: 'is_passed') this.isPassed, this.remarks, @JsonKey(name: 'subject_name') this.subject, @JsonKey(name: 'created_at') this.date, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _ExamModel.fromJson(Map<String, dynamic> json) => _$ExamModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'exam_id') final  int? examId;
@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'obtained_marks') final  String? mark;
@override@JsonKey(name: 'is_passed') final  int? isPassed;
@override final  String? remarks;
@override@JsonKey(name: 'subject_name') final  String? subject;
@override@JsonKey(name: 'created_at') final  String? date;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamModelCopyWith<_ExamModel> get copyWith => __$ExamModelCopyWithImpl<_ExamModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamModel&&(identical(other.id, id) || other.id == id)&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.mark, mark) || other.mark == mark)&&(identical(other.isPassed, isPassed) || other.isPassed == isPassed)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.date, date) || other.date == date)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,examId,studentId,mark,isPassed,remarks,subject,date,updatedAt);

@override
String toString() {
  return 'ExamModel(id: $id, examId: $examId, studentId: $studentId, mark: $mark, isPassed: $isPassed, remarks: $remarks, subject: $subject, date: $date, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ExamModelCopyWith<$Res> implements $ExamModelCopyWith<$Res> {
  factory _$ExamModelCopyWith(_ExamModel value, $Res Function(_ExamModel) _then) = __$ExamModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'exam_id') int? examId,@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'obtained_marks') String? mark,@JsonKey(name: 'is_passed') int? isPassed, String? remarks,@JsonKey(name: 'subject_name') String? subject,@JsonKey(name: 'created_at') String? date,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$ExamModelCopyWithImpl<$Res>
    implements _$ExamModelCopyWith<$Res> {
  __$ExamModelCopyWithImpl(this._self, this._then);

  final _ExamModel _self;
  final $Res Function(_ExamModel) _then;

/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? examId = freezed,Object? studentId = freezed,Object? mark = freezed,Object? isPassed = freezed,Object? remarks = freezed,Object? subject = freezed,Object? date = freezed,Object? updatedAt = freezed,}) {
  return _then(_ExamModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,examId: freezed == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as int?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,mark: freezed == mark ? _self.mark : mark // ignore: cast_nullable_to_non_nullable
as String?,isPassed: freezed == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as int?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Branch {

 int? get id; String? get name;
/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchCopyWith<Branch> get copyWith => _$BranchCopyWithImpl<Branch>(this as Branch, _$identity);

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Branch(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $BranchCopyWith<$Res>  {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) _then) = _$BranchCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$BranchCopyWithImpl<$Res>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._self, this._then);

  final Branch _self;
  final $Res Function(Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Branch].
extension BranchPatterns on Branch {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Branch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Branch value)  $default,){
final _that = this;
switch (_that) {
case _Branch():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Branch value)?  $default,){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _Branch():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Branch implements Branch {
  const _Branch({this.id, this.name});
  factory _Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchCopyWith<_Branch> get copyWith => __$BranchCopyWithImpl<_Branch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Branch(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) _then) = __$BranchCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(this._self, this._then);

  final _Branch _self;
  final $Res Function(_Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Branch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InstituteBranch {

 int? get id; String? get name; String? get address;
/// Create a copy of InstituteBranch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstituteBranchCopyWith<InstituteBranch> get copyWith => _$InstituteBranchCopyWithImpl<InstituteBranch>(this as InstituteBranch, _$identity);

  /// Serializes this InstituteBranch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstituteBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString() {
  return 'InstituteBranch(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class $InstituteBranchCopyWith<$Res>  {
  factory $InstituteBranchCopyWith(InstituteBranch value, $Res Function(InstituteBranch) _then) = _$InstituteBranchCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? address
});




}
/// @nodoc
class _$InstituteBranchCopyWithImpl<$Res>
    implements $InstituteBranchCopyWith<$Res> {
  _$InstituteBranchCopyWithImpl(this._self, this._then);

  final InstituteBranch _self;
  final $Res Function(InstituteBranch) _then;

/// Create a copy of InstituteBranch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InstituteBranch].
extension InstituteBranchPatterns on InstituteBranch {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstituteBranch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstituteBranch() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstituteBranch value)  $default,){
final _that = this;
switch (_that) {
case _InstituteBranch():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstituteBranch value)?  $default,){
final _that = this;
switch (_that) {
case _InstituteBranch() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstituteBranch() when $default != null:
return $default(_that.id,_that.name,_that.address);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? address)  $default,) {final _that = this;
switch (_that) {
case _InstituteBranch():
return $default(_that.id,_that.name,_that.address);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _InstituteBranch() when $default != null:
return $default(_that.id,_that.name,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InstituteBranch implements InstituteBranch {
  const _InstituteBranch({this.id, this.name, this.address});
  factory _InstituteBranch.fromJson(Map<String, dynamic> json) => _$InstituteBranchFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? address;

/// Create a copy of InstituteBranch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstituteBranchCopyWith<_InstituteBranch> get copyWith => __$InstituteBranchCopyWithImpl<_InstituteBranch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstituteBranchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstituteBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString() {
  return 'InstituteBranch(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class _$InstituteBranchCopyWith<$Res> implements $InstituteBranchCopyWith<$Res> {
  factory _$InstituteBranchCopyWith(_InstituteBranch value, $Res Function(_InstituteBranch) _then) = __$InstituteBranchCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? address
});




}
/// @nodoc
class __$InstituteBranchCopyWithImpl<$Res>
    implements _$InstituteBranchCopyWith<$Res> {
  __$InstituteBranchCopyWithImpl(this._self, this._then);

  final _InstituteBranch _self;
  final $Res Function(_InstituteBranch) _then;

/// Create a copy of InstituteBranch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? address = freezed,}) {
  return _then(_InstituteBranch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Batch {

 int? get id; String? get name;
/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchCopyWith<Batch> get copyWith => _$BatchCopyWithImpl<Batch>(this as Batch, _$identity);

  /// Serializes this Batch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Batch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Batch(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $BatchCopyWith<$Res>  {
  factory $BatchCopyWith(Batch value, $Res Function(Batch) _then) = _$BatchCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$BatchCopyWithImpl<$Res>
    implements $BatchCopyWith<$Res> {
  _$BatchCopyWithImpl(this._self, this._then);

  final Batch _self;
  final $Res Function(Batch) _then;

/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Batch].
extension BatchPatterns on Batch {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Batch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Batch() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Batch value)  $default,){
final _that = this;
switch (_that) {
case _Batch():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Batch value)?  $default,){
final _that = this;
switch (_that) {
case _Batch() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Batch() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _Batch():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Batch() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Batch implements Batch {
  const _Batch({this.id, this.name});
  factory _Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchCopyWith<_Batch> get copyWith => __$BatchCopyWithImpl<_Batch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BatchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Batch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Batch(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$BatchCopyWith<$Res> implements $BatchCopyWith<$Res> {
  factory _$BatchCopyWith(_Batch value, $Res Function(_Batch) _then) = __$BatchCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$BatchCopyWithImpl<$Res>
    implements _$BatchCopyWith<$Res> {
  __$BatchCopyWithImpl(this._self, this._then);

  final _Batch _self;
  final $Res Function(_Batch) _then;

/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Batch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Attendance {

 String? get status;@JsonKey(name: 'attendance_date') String? get attendanceDate;
/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceCopyWith<Attendance> get copyWith => _$AttendanceCopyWithImpl<Attendance>(this as Attendance, _$identity);

  /// Serializes this Attendance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attendance&&(identical(other.status, status) || other.status == status)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,attendanceDate);

@override
String toString() {
  return 'Attendance(status: $status, attendanceDate: $attendanceDate)';
}


}

/// @nodoc
abstract mixin class $AttendanceCopyWith<$Res>  {
  factory $AttendanceCopyWith(Attendance value, $Res Function(Attendance) _then) = _$AttendanceCopyWithImpl;
@useResult
$Res call({
 String? status,@JsonKey(name: 'attendance_date') String? attendanceDate
});




}
/// @nodoc
class _$AttendanceCopyWithImpl<$Res>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._self, this._then);

  final Attendance _self;
  final $Res Function(Attendance) _then;

/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? attendanceDate = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Attendance].
extension AttendancePatterns on Attendance {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attendance() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attendance value)  $default,){
final _that = this;
switch (_that) {
case _Attendance():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attendance value)?  $default,){
final _that = this;
switch (_that) {
case _Attendance() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status, @JsonKey(name: 'attendance_date')  String? attendanceDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attendance() when $default != null:
return $default(_that.status,_that.attendanceDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status, @JsonKey(name: 'attendance_date')  String? attendanceDate)  $default,) {final _that = this;
switch (_that) {
case _Attendance():
return $default(_that.status,_that.attendanceDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status, @JsonKey(name: 'attendance_date')  String? attendanceDate)?  $default,) {final _that = this;
switch (_that) {
case _Attendance() when $default != null:
return $default(_that.status,_that.attendanceDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Attendance implements Attendance {
  const _Attendance({this.status, @JsonKey(name: 'attendance_date') this.attendanceDate});
  factory _Attendance.fromJson(Map<String, dynamic> json) => _$AttendanceFromJson(json);

@override final  String? status;
@override@JsonKey(name: 'attendance_date') final  String? attendanceDate;

/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceCopyWith<_Attendance> get copyWith => __$AttendanceCopyWithImpl<_Attendance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attendance&&(identical(other.status, status) || other.status == status)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,attendanceDate);

@override
String toString() {
  return 'Attendance(status: $status, attendanceDate: $attendanceDate)';
}


}

/// @nodoc
abstract mixin class _$AttendanceCopyWith<$Res> implements $AttendanceCopyWith<$Res> {
  factory _$AttendanceCopyWith(_Attendance value, $Res Function(_Attendance) _then) = __$AttendanceCopyWithImpl;
@override @useResult
$Res call({
 String? status,@JsonKey(name: 'attendance_date') String? attendanceDate
});




}
/// @nodoc
class __$AttendanceCopyWithImpl<$Res>
    implements _$AttendanceCopyWith<$Res> {
  __$AttendanceCopyWithImpl(this._self, this._then);

  final _Attendance _self;
  final $Res Function(_Attendance) _then;

/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? attendanceDate = freezed,}) {
  return _then(_Attendance(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FilteredExamResponse {

 bool? get status; String? get message; List<FilteredExamModel>? get data;
/// Create a copy of FilteredExamResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilteredExamResponseCopyWith<FilteredExamResponse> get copyWith => _$FilteredExamResponseCopyWithImpl<FilteredExamResponse>(this as FilteredExamResponse, _$identity);

  /// Serializes this FilteredExamResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilteredExamResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FilteredExamResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $FilteredExamResponseCopyWith<$Res>  {
  factory $FilteredExamResponseCopyWith(FilteredExamResponse value, $Res Function(FilteredExamResponse) _then) = _$FilteredExamResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, List<FilteredExamModel>? data
});




}
/// @nodoc
class _$FilteredExamResponseCopyWithImpl<$Res>
    implements $FilteredExamResponseCopyWith<$Res> {
  _$FilteredExamResponseCopyWithImpl(this._self, this._then);

  final FilteredExamResponse _self;
  final $Res Function(FilteredExamResponse) _then;

/// Create a copy of FilteredExamResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<FilteredExamModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilteredExamResponse].
extension FilteredExamResponsePatterns on FilteredExamResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilteredExamResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilteredExamResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilteredExamResponse value)  $default,){
final _that = this;
switch (_that) {
case _FilteredExamResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilteredExamResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FilteredExamResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  List<FilteredExamModel>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilteredExamResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  List<FilteredExamModel>? data)  $default,) {final _that = this;
switch (_that) {
case _FilteredExamResponse():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  List<FilteredExamModel>? data)?  $default,) {final _that = this;
switch (_that) {
case _FilteredExamResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilteredExamResponse implements FilteredExamResponse {
  const _FilteredExamResponse({this.status, this.message, final  List<FilteredExamModel>? data}): _data = data;
  factory _FilteredExamResponse.fromJson(Map<String, dynamic> json) => _$FilteredExamResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
 final  List<FilteredExamModel>? _data;
@override List<FilteredExamModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FilteredExamResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilteredExamResponseCopyWith<_FilteredExamResponse> get copyWith => __$FilteredExamResponseCopyWithImpl<_FilteredExamResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilteredExamResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilteredExamResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FilteredExamResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FilteredExamResponseCopyWith<$Res> implements $FilteredExamResponseCopyWith<$Res> {
  factory _$FilteredExamResponseCopyWith(_FilteredExamResponse value, $Res Function(_FilteredExamResponse) _then) = __$FilteredExamResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, List<FilteredExamModel>? data
});




}
/// @nodoc
class __$FilteredExamResponseCopyWithImpl<$Res>
    implements _$FilteredExamResponseCopyWith<$Res> {
  __$FilteredExamResponseCopyWithImpl(this._self, this._then);

  final _FilteredExamResponse _self;
  final $Res Function(_FilteredExamResponse) _then;

/// Create a copy of FilteredExamResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_FilteredExamResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FilteredExamModel>?,
  ));
}


}


/// @nodoc
mixin _$FilteredExamModel {

 int? get id;@JsonKey(name: 'obtained_marks') dynamic get obtainedMarks;@JsonKey(name: 'is_passed') dynamic get isPassed;@JsonKey(name: 'subject_name') String? get subjectName;@JsonKey(name: 'exam_name') String? get examName;@JsonKey(name: 'created_at') String? get createdAt; ExamDetails? get exam; SubjectDetails? get subject;
/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilteredExamModelCopyWith<FilteredExamModel> get copyWith => _$FilteredExamModelCopyWithImpl<FilteredExamModel>(this as FilteredExamModel, _$identity);

  /// Serializes this FilteredExamModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilteredExamModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.obtainedMarks, obtainedMarks)&&const DeepCollectionEquality().equals(other.isPassed, isPassed)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.exam, exam) || other.exam == exam)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(obtainedMarks),const DeepCollectionEquality().hash(isPassed),subjectName,examName,createdAt,exam,subject);

@override
String toString() {
  return 'FilteredExamModel(id: $id, obtainedMarks: $obtainedMarks, isPassed: $isPassed, subjectName: $subjectName, examName: $examName, createdAt: $createdAt, exam: $exam, subject: $subject)';
}


}

/// @nodoc
abstract mixin class $FilteredExamModelCopyWith<$Res>  {
  factory $FilteredExamModelCopyWith(FilteredExamModel value, $Res Function(FilteredExamModel) _then) = _$FilteredExamModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'obtained_marks') dynamic obtainedMarks,@JsonKey(name: 'is_passed') dynamic isPassed,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'exam_name') String? examName,@JsonKey(name: 'created_at') String? createdAt, ExamDetails? exam, SubjectDetails? subject
});


$ExamDetailsCopyWith<$Res>? get exam;$SubjectDetailsCopyWith<$Res>? get subject;

}
/// @nodoc
class _$FilteredExamModelCopyWithImpl<$Res>
    implements $FilteredExamModelCopyWith<$Res> {
  _$FilteredExamModelCopyWithImpl(this._self, this._then);

  final FilteredExamModel _self;
  final $Res Function(FilteredExamModel) _then;

/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? obtainedMarks = freezed,Object? isPassed = freezed,Object? subjectName = freezed,Object? examName = freezed,Object? createdAt = freezed,Object? exam = freezed,Object? subject = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,obtainedMarks: freezed == obtainedMarks ? _self.obtainedMarks : obtainedMarks // ignore: cast_nullable_to_non_nullable
as dynamic,isPassed: freezed == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as dynamic,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,examName: freezed == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as ExamDetails?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectDetails?,
  ));
}
/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamDetailsCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $ExamDetailsCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectDetailsCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectDetailsCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}
}


/// Adds pattern-matching-related methods to [FilteredExamModel].
extension FilteredExamModelPatterns on FilteredExamModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilteredExamModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilteredExamModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilteredExamModel value)  $default,){
final _that = this;
switch (_that) {
case _FilteredExamModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilteredExamModel value)?  $default,){
final _that = this;
switch (_that) {
case _FilteredExamModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'obtained_marks')  dynamic obtainedMarks, @JsonKey(name: 'is_passed')  dynamic isPassed, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'exam_name')  String? examName, @JsonKey(name: 'created_at')  String? createdAt,  ExamDetails? exam,  SubjectDetails? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilteredExamModel() when $default != null:
return $default(_that.id,_that.obtainedMarks,_that.isPassed,_that.subjectName,_that.examName,_that.createdAt,_that.exam,_that.subject);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'obtained_marks')  dynamic obtainedMarks, @JsonKey(name: 'is_passed')  dynamic isPassed, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'exam_name')  String? examName, @JsonKey(name: 'created_at')  String? createdAt,  ExamDetails? exam,  SubjectDetails? subject)  $default,) {final _that = this;
switch (_that) {
case _FilteredExamModel():
return $default(_that.id,_that.obtainedMarks,_that.isPassed,_that.subjectName,_that.examName,_that.createdAt,_that.exam,_that.subject);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'obtained_marks')  dynamic obtainedMarks, @JsonKey(name: 'is_passed')  dynamic isPassed, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'exam_name')  String? examName, @JsonKey(name: 'created_at')  String? createdAt,  ExamDetails? exam,  SubjectDetails? subject)?  $default,) {final _that = this;
switch (_that) {
case _FilteredExamModel() when $default != null:
return $default(_that.id,_that.obtainedMarks,_that.isPassed,_that.subjectName,_that.examName,_that.createdAt,_that.exam,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilteredExamModel implements FilteredExamModel {
  const _FilteredExamModel({this.id, @JsonKey(name: 'obtained_marks') this.obtainedMarks, @JsonKey(name: 'is_passed') this.isPassed, @JsonKey(name: 'subject_name') this.subjectName, @JsonKey(name: 'exam_name') this.examName, @JsonKey(name: 'created_at') this.createdAt, this.exam, this.subject});
  factory _FilteredExamModel.fromJson(Map<String, dynamic> json) => _$FilteredExamModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'obtained_marks') final  dynamic obtainedMarks;
@override@JsonKey(name: 'is_passed') final  dynamic isPassed;
@override@JsonKey(name: 'subject_name') final  String? subjectName;
@override@JsonKey(name: 'exam_name') final  String? examName;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override final  ExamDetails? exam;
@override final  SubjectDetails? subject;

/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilteredExamModelCopyWith<_FilteredExamModel> get copyWith => __$FilteredExamModelCopyWithImpl<_FilteredExamModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilteredExamModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilteredExamModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.obtainedMarks, obtainedMarks)&&const DeepCollectionEquality().equals(other.isPassed, isPassed)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.exam, exam) || other.exam == exam)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(obtainedMarks),const DeepCollectionEquality().hash(isPassed),subjectName,examName,createdAt,exam,subject);

@override
String toString() {
  return 'FilteredExamModel(id: $id, obtainedMarks: $obtainedMarks, isPassed: $isPassed, subjectName: $subjectName, examName: $examName, createdAt: $createdAt, exam: $exam, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$FilteredExamModelCopyWith<$Res> implements $FilteredExamModelCopyWith<$Res> {
  factory _$FilteredExamModelCopyWith(_FilteredExamModel value, $Res Function(_FilteredExamModel) _then) = __$FilteredExamModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'obtained_marks') dynamic obtainedMarks,@JsonKey(name: 'is_passed') dynamic isPassed,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'exam_name') String? examName,@JsonKey(name: 'created_at') String? createdAt, ExamDetails? exam, SubjectDetails? subject
});


@override $ExamDetailsCopyWith<$Res>? get exam;@override $SubjectDetailsCopyWith<$Res>? get subject;

}
/// @nodoc
class __$FilteredExamModelCopyWithImpl<$Res>
    implements _$FilteredExamModelCopyWith<$Res> {
  __$FilteredExamModelCopyWithImpl(this._self, this._then);

  final _FilteredExamModel _self;
  final $Res Function(_FilteredExamModel) _then;

/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? obtainedMarks = freezed,Object? isPassed = freezed,Object? subjectName = freezed,Object? examName = freezed,Object? createdAt = freezed,Object? exam = freezed,Object? subject = freezed,}) {
  return _then(_FilteredExamModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,obtainedMarks: freezed == obtainedMarks ? _self.obtainedMarks : obtainedMarks // ignore: cast_nullable_to_non_nullable
as dynamic,isPassed: freezed == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as dynamic,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,examName: freezed == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as ExamDetails?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectDetails?,
  ));
}

/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamDetailsCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $ExamDetailsCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}/// Create a copy of FilteredExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectDetailsCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectDetailsCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}
}


/// @nodoc
mixin _$ExamDetails {

 String? get name;@JsonKey(name: 'total_marks') dynamic get totalMarks;@JsonKey(name: 'exam_date') String? get examDate;
/// Create a copy of ExamDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamDetailsCopyWith<ExamDetails> get copyWith => _$ExamDetailsCopyWithImpl<ExamDetails>(this as ExamDetails, _$identity);

  /// Serializes this ExamDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamDetails&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.totalMarks, totalMarks)&&(identical(other.examDate, examDate) || other.examDate == examDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(totalMarks),examDate);

@override
String toString() {
  return 'ExamDetails(name: $name, totalMarks: $totalMarks, examDate: $examDate)';
}


}

/// @nodoc
abstract mixin class $ExamDetailsCopyWith<$Res>  {
  factory $ExamDetailsCopyWith(ExamDetails value, $Res Function(ExamDetails) _then) = _$ExamDetailsCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'total_marks') dynamic totalMarks,@JsonKey(name: 'exam_date') String? examDate
});




}
/// @nodoc
class _$ExamDetailsCopyWithImpl<$Res>
    implements $ExamDetailsCopyWith<$Res> {
  _$ExamDetailsCopyWithImpl(this._self, this._then);

  final ExamDetails _self;
  final $Res Function(ExamDetails) _then;

/// Create a copy of ExamDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? totalMarks = freezed,Object? examDate = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,totalMarks: freezed == totalMarks ? _self.totalMarks : totalMarks // ignore: cast_nullable_to_non_nullable
as dynamic,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamDetails].
extension ExamDetailsPatterns on ExamDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamDetails value)  $default,){
final _that = this;
switch (_that) {
case _ExamDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ExamDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'total_marks')  dynamic totalMarks, @JsonKey(name: 'exam_date')  String? examDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamDetails() when $default != null:
return $default(_that.name,_that.totalMarks,_that.examDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'total_marks')  dynamic totalMarks, @JsonKey(name: 'exam_date')  String? examDate)  $default,) {final _that = this;
switch (_that) {
case _ExamDetails():
return $default(_that.name,_that.totalMarks,_that.examDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'total_marks')  dynamic totalMarks, @JsonKey(name: 'exam_date')  String? examDate)?  $default,) {final _that = this;
switch (_that) {
case _ExamDetails() when $default != null:
return $default(_that.name,_that.totalMarks,_that.examDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamDetails implements ExamDetails {
  const _ExamDetails({this.name, @JsonKey(name: 'total_marks') this.totalMarks, @JsonKey(name: 'exam_date') this.examDate});
  factory _ExamDetails.fromJson(Map<String, dynamic> json) => _$ExamDetailsFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'total_marks') final  dynamic totalMarks;
@override@JsonKey(name: 'exam_date') final  String? examDate;

/// Create a copy of ExamDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamDetailsCopyWith<_ExamDetails> get copyWith => __$ExamDetailsCopyWithImpl<_ExamDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamDetails&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.totalMarks, totalMarks)&&(identical(other.examDate, examDate) || other.examDate == examDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(totalMarks),examDate);

@override
String toString() {
  return 'ExamDetails(name: $name, totalMarks: $totalMarks, examDate: $examDate)';
}


}

/// @nodoc
abstract mixin class _$ExamDetailsCopyWith<$Res> implements $ExamDetailsCopyWith<$Res> {
  factory _$ExamDetailsCopyWith(_ExamDetails value, $Res Function(_ExamDetails) _then) = __$ExamDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'total_marks') dynamic totalMarks,@JsonKey(name: 'exam_date') String? examDate
});




}
/// @nodoc
class __$ExamDetailsCopyWithImpl<$Res>
    implements _$ExamDetailsCopyWith<$Res> {
  __$ExamDetailsCopyWithImpl(this._self, this._then);

  final _ExamDetails _self;
  final $Res Function(_ExamDetails) _then;

/// Create a copy of ExamDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? totalMarks = freezed,Object? examDate = freezed,}) {
  return _then(_ExamDetails(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,totalMarks: freezed == totalMarks ? _self.totalMarks : totalMarks // ignore: cast_nullable_to_non_nullable
as dynamic,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SubjectDetails {

 String? get name;
/// Create a copy of SubjectDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectDetailsCopyWith<SubjectDetails> get copyWith => _$SubjectDetailsCopyWithImpl<SubjectDetails>(this as SubjectDetails, _$identity);

  /// Serializes this SubjectDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectDetails&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SubjectDetails(name: $name)';
}


}

/// @nodoc
abstract mixin class $SubjectDetailsCopyWith<$Res>  {
  factory $SubjectDetailsCopyWith(SubjectDetails value, $Res Function(SubjectDetails) _then) = _$SubjectDetailsCopyWithImpl;
@useResult
$Res call({
 String? name
});




}
/// @nodoc
class _$SubjectDetailsCopyWithImpl<$Res>
    implements $SubjectDetailsCopyWith<$Res> {
  _$SubjectDetailsCopyWithImpl(this._self, this._then);

  final SubjectDetails _self;
  final $Res Function(SubjectDetails) _then;

/// Create a copy of SubjectDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectDetails].
extension SubjectDetailsPatterns on SubjectDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectDetails value)  $default,){
final _that = this;
switch (_that) {
case _SubjectDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectDetails value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectDetails() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name)  $default,) {final _that = this;
switch (_that) {
case _SubjectDetails():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name)?  $default,) {final _that = this;
switch (_that) {
case _SubjectDetails() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectDetails implements SubjectDetails {
  const _SubjectDetails({this.name});
  factory _SubjectDetails.fromJson(Map<String, dynamic> json) => _$SubjectDetailsFromJson(json);

@override final  String? name;

/// Create a copy of SubjectDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectDetailsCopyWith<_SubjectDetails> get copyWith => __$SubjectDetailsCopyWithImpl<_SubjectDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectDetails&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SubjectDetails(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SubjectDetailsCopyWith<$Res> implements $SubjectDetailsCopyWith<$Res> {
  factory _$SubjectDetailsCopyWith(_SubjectDetails value, $Res Function(_SubjectDetails) _then) = __$SubjectDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? name
});




}
/// @nodoc
class __$SubjectDetailsCopyWithImpl<$Res>
    implements _$SubjectDetailsCopyWith<$Res> {
  __$SubjectDetailsCopyWithImpl(this._self, this._then);

  final _SubjectDetails _self;
  final $Res Function(_SubjectDetails) _then;

/// Create a copy of SubjectDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_SubjectDetails(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EnrolledSubjectsResponse {

 bool? get status; String? get message; List<EnrolledSubjectModel>? get data;
/// Create a copy of EnrolledSubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrolledSubjectsResponseCopyWith<EnrolledSubjectsResponse> get copyWith => _$EnrolledSubjectsResponseCopyWithImpl<EnrolledSubjectsResponse>(this as EnrolledSubjectsResponse, _$identity);

  /// Serializes this EnrolledSubjectsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrolledSubjectsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EnrolledSubjectsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $EnrolledSubjectsResponseCopyWith<$Res>  {
  factory $EnrolledSubjectsResponseCopyWith(EnrolledSubjectsResponse value, $Res Function(EnrolledSubjectsResponse) _then) = _$EnrolledSubjectsResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, List<EnrolledSubjectModel>? data
});




}
/// @nodoc
class _$EnrolledSubjectsResponseCopyWithImpl<$Res>
    implements $EnrolledSubjectsResponseCopyWith<$Res> {
  _$EnrolledSubjectsResponseCopyWithImpl(this._self, this._then);

  final EnrolledSubjectsResponse _self;
  final $Res Function(EnrolledSubjectsResponse) _then;

/// Create a copy of EnrolledSubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EnrolledSubjectModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrolledSubjectsResponse].
extension EnrolledSubjectsResponsePatterns on EnrolledSubjectsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrolledSubjectsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrolledSubjectsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrolledSubjectsResponse value)  $default,){
final _that = this;
switch (_that) {
case _EnrolledSubjectsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrolledSubjectsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EnrolledSubjectsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  List<EnrolledSubjectModel>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrolledSubjectsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  List<EnrolledSubjectModel>? data)  $default,) {final _that = this;
switch (_that) {
case _EnrolledSubjectsResponse():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  List<EnrolledSubjectModel>? data)?  $default,) {final _that = this;
switch (_that) {
case _EnrolledSubjectsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnrolledSubjectsResponse implements EnrolledSubjectsResponse {
  const _EnrolledSubjectsResponse({this.status, this.message, final  List<EnrolledSubjectModel>? data}): _data = data;
  factory _EnrolledSubjectsResponse.fromJson(Map<String, dynamic> json) => _$EnrolledSubjectsResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
 final  List<EnrolledSubjectModel>? _data;
@override List<EnrolledSubjectModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of EnrolledSubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrolledSubjectsResponseCopyWith<_EnrolledSubjectsResponse> get copyWith => __$EnrolledSubjectsResponseCopyWithImpl<_EnrolledSubjectsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrolledSubjectsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrolledSubjectsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'EnrolledSubjectsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$EnrolledSubjectsResponseCopyWith<$Res> implements $EnrolledSubjectsResponseCopyWith<$Res> {
  factory _$EnrolledSubjectsResponseCopyWith(_EnrolledSubjectsResponse value, $Res Function(_EnrolledSubjectsResponse) _then) = __$EnrolledSubjectsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, List<EnrolledSubjectModel>? data
});




}
/// @nodoc
class __$EnrolledSubjectsResponseCopyWithImpl<$Res>
    implements _$EnrolledSubjectsResponseCopyWith<$Res> {
  __$EnrolledSubjectsResponseCopyWithImpl(this._self, this._then);

  final _EnrolledSubjectsResponse _self;
  final $Res Function(_EnrolledSubjectsResponse) _then;

/// Create a copy of EnrolledSubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_EnrolledSubjectsResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EnrolledSubjectModel>?,
  ));
}


}


/// @nodoc
mixin _$EnrolledSubjectModel {

@JsonKey(name: 'batch_subject_id') int? get batchSubjectId;@JsonKey(name: 'subject_id') int? get subjectId;@JsonKey(name: 'subject_name') String? get subjectName;@JsonKey(name: 'instructor_name') String? get instructorName;@JsonKey(name: 'weekly_lessons') int? get weeklyLessons;@JsonKey(name: 'is_active') bool? get isActive; String? get notes;
/// Create a copy of EnrolledSubjectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrolledSubjectModelCopyWith<EnrolledSubjectModel> get copyWith => _$EnrolledSubjectModelCopyWithImpl<EnrolledSubjectModel>(this as EnrolledSubjectModel, _$identity);

  /// Serializes this EnrolledSubjectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrolledSubjectModel&&(identical(other.batchSubjectId, batchSubjectId) || other.batchSubjectId == batchSubjectId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.instructorName, instructorName) || other.instructorName == instructorName)&&(identical(other.weeklyLessons, weeklyLessons) || other.weeklyLessons == weeklyLessons)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchSubjectId,subjectId,subjectName,instructorName,weeklyLessons,isActive,notes);

@override
String toString() {
  return 'EnrolledSubjectModel(batchSubjectId: $batchSubjectId, subjectId: $subjectId, subjectName: $subjectName, instructorName: $instructorName, weeklyLessons: $weeklyLessons, isActive: $isActive, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $EnrolledSubjectModelCopyWith<$Res>  {
  factory $EnrolledSubjectModelCopyWith(EnrolledSubjectModel value, $Res Function(EnrolledSubjectModel) _then) = _$EnrolledSubjectModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'batch_subject_id') int? batchSubjectId,@JsonKey(name: 'subject_id') int? subjectId,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'instructor_name') String? instructorName,@JsonKey(name: 'weekly_lessons') int? weeklyLessons,@JsonKey(name: 'is_active') bool? isActive, String? notes
});




}
/// @nodoc
class _$EnrolledSubjectModelCopyWithImpl<$Res>
    implements $EnrolledSubjectModelCopyWith<$Res> {
  _$EnrolledSubjectModelCopyWithImpl(this._self, this._then);

  final EnrolledSubjectModel _self;
  final $Res Function(EnrolledSubjectModel) _then;

/// Create a copy of EnrolledSubjectModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? batchSubjectId = freezed,Object? subjectId = freezed,Object? subjectName = freezed,Object? instructorName = freezed,Object? weeklyLessons = freezed,Object? isActive = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
batchSubjectId: freezed == batchSubjectId ? _self.batchSubjectId : batchSubjectId // ignore: cast_nullable_to_non_nullable
as int?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,instructorName: freezed == instructorName ? _self.instructorName : instructorName // ignore: cast_nullable_to_non_nullable
as String?,weeklyLessons: freezed == weeklyLessons ? _self.weeklyLessons : weeklyLessons // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrolledSubjectModel].
extension EnrolledSubjectModelPatterns on EnrolledSubjectModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrolledSubjectModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrolledSubjectModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrolledSubjectModel value)  $default,){
final _that = this;
switch (_that) {
case _EnrolledSubjectModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrolledSubjectModel value)?  $default,){
final _that = this;
switch (_that) {
case _EnrolledSubjectModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'batch_subject_id')  int? batchSubjectId, @JsonKey(name: 'subject_id')  int? subjectId, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'instructor_name')  String? instructorName, @JsonKey(name: 'weekly_lessons')  int? weeklyLessons, @JsonKey(name: 'is_active')  bool? isActive,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrolledSubjectModel() when $default != null:
return $default(_that.batchSubjectId,_that.subjectId,_that.subjectName,_that.instructorName,_that.weeklyLessons,_that.isActive,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'batch_subject_id')  int? batchSubjectId, @JsonKey(name: 'subject_id')  int? subjectId, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'instructor_name')  String? instructorName, @JsonKey(name: 'weekly_lessons')  int? weeklyLessons, @JsonKey(name: 'is_active')  bool? isActive,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _EnrolledSubjectModel():
return $default(_that.batchSubjectId,_that.subjectId,_that.subjectName,_that.instructorName,_that.weeklyLessons,_that.isActive,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'batch_subject_id')  int? batchSubjectId, @JsonKey(name: 'subject_id')  int? subjectId, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'instructor_name')  String? instructorName, @JsonKey(name: 'weekly_lessons')  int? weeklyLessons, @JsonKey(name: 'is_active')  bool? isActive,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _EnrolledSubjectModel() when $default != null:
return $default(_that.batchSubjectId,_that.subjectId,_that.subjectName,_that.instructorName,_that.weeklyLessons,_that.isActive,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnrolledSubjectModel implements EnrolledSubjectModel {
  const _EnrolledSubjectModel({@JsonKey(name: 'batch_subject_id') this.batchSubjectId, @JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'subject_name') this.subjectName, @JsonKey(name: 'instructor_name') this.instructorName, @JsonKey(name: 'weekly_lessons') this.weeklyLessons, @JsonKey(name: 'is_active') this.isActive, this.notes});
  factory _EnrolledSubjectModel.fromJson(Map<String, dynamic> json) => _$EnrolledSubjectModelFromJson(json);

@override@JsonKey(name: 'batch_subject_id') final  int? batchSubjectId;
@override@JsonKey(name: 'subject_id') final  int? subjectId;
@override@JsonKey(name: 'subject_name') final  String? subjectName;
@override@JsonKey(name: 'instructor_name') final  String? instructorName;
@override@JsonKey(name: 'weekly_lessons') final  int? weeklyLessons;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override final  String? notes;

/// Create a copy of EnrolledSubjectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrolledSubjectModelCopyWith<_EnrolledSubjectModel> get copyWith => __$EnrolledSubjectModelCopyWithImpl<_EnrolledSubjectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrolledSubjectModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrolledSubjectModel&&(identical(other.batchSubjectId, batchSubjectId) || other.batchSubjectId == batchSubjectId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.instructorName, instructorName) || other.instructorName == instructorName)&&(identical(other.weeklyLessons, weeklyLessons) || other.weeklyLessons == weeklyLessons)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchSubjectId,subjectId,subjectName,instructorName,weeklyLessons,isActive,notes);

@override
String toString() {
  return 'EnrolledSubjectModel(batchSubjectId: $batchSubjectId, subjectId: $subjectId, subjectName: $subjectName, instructorName: $instructorName, weeklyLessons: $weeklyLessons, isActive: $isActive, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$EnrolledSubjectModelCopyWith<$Res> implements $EnrolledSubjectModelCopyWith<$Res> {
  factory _$EnrolledSubjectModelCopyWith(_EnrolledSubjectModel value, $Res Function(_EnrolledSubjectModel) _then) = __$EnrolledSubjectModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'batch_subject_id') int? batchSubjectId,@JsonKey(name: 'subject_id') int? subjectId,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'instructor_name') String? instructorName,@JsonKey(name: 'weekly_lessons') int? weeklyLessons,@JsonKey(name: 'is_active') bool? isActive, String? notes
});




}
/// @nodoc
class __$EnrolledSubjectModelCopyWithImpl<$Res>
    implements _$EnrolledSubjectModelCopyWith<$Res> {
  __$EnrolledSubjectModelCopyWithImpl(this._self, this._then);

  final _EnrolledSubjectModel _self;
  final $Res Function(_EnrolledSubjectModel) _then;

/// Create a copy of EnrolledSubjectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? batchSubjectId = freezed,Object? subjectId = freezed,Object? subjectName = freezed,Object? instructorName = freezed,Object? weeklyLessons = freezed,Object? isActive = freezed,Object? notes = freezed,}) {
  return _then(_EnrolledSubjectModel(
batchSubjectId: freezed == batchSubjectId ? _self.batchSubjectId : batchSubjectId // ignore: cast_nullable_to_non_nullable
as int?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,instructorName: freezed == instructorName ? _self.instructorName : instructorName // ignore: cast_nullable_to_non_nullable
as String?,weeklyLessons: freezed == weeklyLessons ? _self.weeklyLessons : weeklyLessons // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
