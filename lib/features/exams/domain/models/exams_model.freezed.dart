// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exams_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExamsResponse {

 bool? get status; String? get message; List<ExamModel>? get data;
/// Create a copy of ExamsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamsResponseCopyWith<ExamsResponse> get copyWith => _$ExamsResponseCopyWithImpl<ExamsResponse>(this as ExamsResponse, _$identity);

  /// Serializes this ExamsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ExamsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ExamsResponseCopyWith<$Res>  {
  factory $ExamsResponseCopyWith(ExamsResponse value, $Res Function(ExamsResponse) _then) = _$ExamsResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, List<ExamModel>? data
});




}
/// @nodoc
class _$ExamsResponseCopyWithImpl<$Res>
    implements $ExamsResponseCopyWith<$Res> {
  _$ExamsResponseCopyWithImpl(this._self, this._then);

  final ExamsResponse _self;
  final $Res Function(ExamsResponse) _then;

/// Create a copy of ExamsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ExamModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamsResponse].
extension ExamsResponsePatterns on ExamsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ExamsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ExamsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  List<ExamModel>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  List<ExamModel>? data)  $default,) {final _that = this;
switch (_that) {
case _ExamsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  List<ExamModel>? data)?  $default,) {final _that = this;
switch (_that) {
case _ExamsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamsResponse implements ExamsResponse {
  const _ExamsResponse({this.status, this.message, final  List<ExamModel>? data}): _data = data;
  factory _ExamsResponse.fromJson(Map<String, dynamic> json) => _$ExamsResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
 final  List<ExamModel>? _data;
@override List<ExamModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ExamsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamsResponseCopyWith<_ExamsResponse> get copyWith => __$ExamsResponseCopyWithImpl<_ExamsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ExamsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ExamsResponseCopyWith<$Res> implements $ExamsResponseCopyWith<$Res> {
  factory _$ExamsResponseCopyWith(_ExamsResponse value, $Res Function(_ExamsResponse) _then) = __$ExamsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, List<ExamModel>? data
});




}
/// @nodoc
class __$ExamsResponseCopyWithImpl<$Res>
    implements _$ExamsResponseCopyWith<$Res> {
  __$ExamsResponseCopyWithImpl(this._self, this._then);

  final _ExamsResponse _self;
  final $Res Function(_ExamsResponse) _then;

/// Create a copy of ExamsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_ExamsResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ExamModel>?,
  ));
}


}


/// @nodoc
mixin _$ExamModel {

 int? get id; String? get name;@JsonKey(name: 'exam_date') String? get examDate;@JsonKey(name: 'exam_time') String? get examTime;@JsonKey(name: 'exam_end_time') String? get examEndTime;@JsonKey(name: 'total_marks') int? get totalMarks;@JsonKey(name: 'passing_marks') int? get passingMarks; String? get status;@JsonKey(name: 'exam_type') ExamType? get examType;@JsonKey(name: 'batch_subject') BatchSubject? get batchSubject; String? get remarks;
/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamModelCopyWith<ExamModel> get copyWith => _$ExamModelCopyWithImpl<ExamModel>(this as ExamModel, _$identity);

  /// Serializes this ExamModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.examDate, examDate) || other.examDate == examDate)&&(identical(other.examTime, examTime) || other.examTime == examTime)&&(identical(other.examEndTime, examEndTime) || other.examEndTime == examEndTime)&&(identical(other.totalMarks, totalMarks) || other.totalMarks == totalMarks)&&(identical(other.passingMarks, passingMarks) || other.passingMarks == passingMarks)&&(identical(other.status, status) || other.status == status)&&(identical(other.examType, examType) || other.examType == examType)&&(identical(other.batchSubject, batchSubject) || other.batchSubject == batchSubject)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,examDate,examTime,examEndTime,totalMarks,passingMarks,status,examType,batchSubject,remarks);

@override
String toString() {
  return 'ExamModel(id: $id, name: $name, examDate: $examDate, examTime: $examTime, examEndTime: $examEndTime, totalMarks: $totalMarks, passingMarks: $passingMarks, status: $status, examType: $examType, batchSubject: $batchSubject, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class $ExamModelCopyWith<$Res>  {
  factory $ExamModelCopyWith(ExamModel value, $Res Function(ExamModel) _then) = _$ExamModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'exam_date') String? examDate,@JsonKey(name: 'exam_time') String? examTime,@JsonKey(name: 'exam_end_time') String? examEndTime,@JsonKey(name: 'total_marks') int? totalMarks,@JsonKey(name: 'passing_marks') int? passingMarks, String? status,@JsonKey(name: 'exam_type') ExamType? examType,@JsonKey(name: 'batch_subject') BatchSubject? batchSubject, String? remarks
});


$ExamTypeCopyWith<$Res>? get examType;$BatchSubjectCopyWith<$Res>? get batchSubject;

}
/// @nodoc
class _$ExamModelCopyWithImpl<$Res>
    implements $ExamModelCopyWith<$Res> {
  _$ExamModelCopyWithImpl(this._self, this._then);

  final ExamModel _self;
  final $Res Function(ExamModel) _then;

/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? examDate = freezed,Object? examTime = freezed,Object? examEndTime = freezed,Object? totalMarks = freezed,Object? passingMarks = freezed,Object? status = freezed,Object? examType = freezed,Object? batchSubject = freezed,Object? remarks = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as String?,examTime: freezed == examTime ? _self.examTime : examTime // ignore: cast_nullable_to_non_nullable
as String?,examEndTime: freezed == examEndTime ? _self.examEndTime : examEndTime // ignore: cast_nullable_to_non_nullable
as String?,totalMarks: freezed == totalMarks ? _self.totalMarks : totalMarks // ignore: cast_nullable_to_non_nullable
as int?,passingMarks: freezed == passingMarks ? _self.passingMarks : passingMarks // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamType?,batchSubject: freezed == batchSubject ? _self.batchSubject : batchSubject // ignore: cast_nullable_to_non_nullable
as BatchSubject?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamTypeCopyWith<$Res>? get examType {
    if (_self.examType == null) {
    return null;
  }

  return $ExamTypeCopyWith<$Res>(_self.examType!, (value) {
    return _then(_self.copyWith(examType: value));
  });
}/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BatchSubjectCopyWith<$Res>? get batchSubject {
    if (_self.batchSubject == null) {
    return null;
  }

  return $BatchSubjectCopyWith<$Res>(_self.batchSubject!, (value) {
    return _then(_self.copyWith(batchSubject: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'exam_date')  String? examDate, @JsonKey(name: 'exam_time')  String? examTime, @JsonKey(name: 'exam_end_time')  String? examEndTime, @JsonKey(name: 'total_marks')  int? totalMarks, @JsonKey(name: 'passing_marks')  int? passingMarks,  String? status, @JsonKey(name: 'exam_type')  ExamType? examType, @JsonKey(name: 'batch_subject')  BatchSubject? batchSubject,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamModel() when $default != null:
return $default(_that.id,_that.name,_that.examDate,_that.examTime,_that.examEndTime,_that.totalMarks,_that.passingMarks,_that.status,_that.examType,_that.batchSubject,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'exam_date')  String? examDate, @JsonKey(name: 'exam_time')  String? examTime, @JsonKey(name: 'exam_end_time')  String? examEndTime, @JsonKey(name: 'total_marks')  int? totalMarks, @JsonKey(name: 'passing_marks')  int? passingMarks,  String? status, @JsonKey(name: 'exam_type')  ExamType? examType, @JsonKey(name: 'batch_subject')  BatchSubject? batchSubject,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _ExamModel():
return $default(_that.id,_that.name,_that.examDate,_that.examTime,_that.examEndTime,_that.totalMarks,_that.passingMarks,_that.status,_that.examType,_that.batchSubject,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'exam_date')  String? examDate, @JsonKey(name: 'exam_time')  String? examTime, @JsonKey(name: 'exam_end_time')  String? examEndTime, @JsonKey(name: 'total_marks')  int? totalMarks, @JsonKey(name: 'passing_marks')  int? passingMarks,  String? status, @JsonKey(name: 'exam_type')  ExamType? examType, @JsonKey(name: 'batch_subject')  BatchSubject? batchSubject,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _ExamModel() when $default != null:
return $default(_that.id,_that.name,_that.examDate,_that.examTime,_that.examEndTime,_that.totalMarks,_that.passingMarks,_that.status,_that.examType,_that.batchSubject,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamModel implements ExamModel {
  const _ExamModel({this.id, this.name, @JsonKey(name: 'exam_date') this.examDate, @JsonKey(name: 'exam_time') this.examTime, @JsonKey(name: 'exam_end_time') this.examEndTime, @JsonKey(name: 'total_marks') this.totalMarks, @JsonKey(name: 'passing_marks') this.passingMarks, this.status, @JsonKey(name: 'exam_type') this.examType, @JsonKey(name: 'batch_subject') this.batchSubject, this.remarks});
  factory _ExamModel.fromJson(Map<String, dynamic> json) => _$ExamModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'exam_date') final  String? examDate;
@override@JsonKey(name: 'exam_time') final  String? examTime;
@override@JsonKey(name: 'exam_end_time') final  String? examEndTime;
@override@JsonKey(name: 'total_marks') final  int? totalMarks;
@override@JsonKey(name: 'passing_marks') final  int? passingMarks;
@override final  String? status;
@override@JsonKey(name: 'exam_type') final  ExamType? examType;
@override@JsonKey(name: 'batch_subject') final  BatchSubject? batchSubject;
@override final  String? remarks;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.examDate, examDate) || other.examDate == examDate)&&(identical(other.examTime, examTime) || other.examTime == examTime)&&(identical(other.examEndTime, examEndTime) || other.examEndTime == examEndTime)&&(identical(other.totalMarks, totalMarks) || other.totalMarks == totalMarks)&&(identical(other.passingMarks, passingMarks) || other.passingMarks == passingMarks)&&(identical(other.status, status) || other.status == status)&&(identical(other.examType, examType) || other.examType == examType)&&(identical(other.batchSubject, batchSubject) || other.batchSubject == batchSubject)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,examDate,examTime,examEndTime,totalMarks,passingMarks,status,examType,batchSubject,remarks);

@override
String toString() {
  return 'ExamModel(id: $id, name: $name, examDate: $examDate, examTime: $examTime, examEndTime: $examEndTime, totalMarks: $totalMarks, passingMarks: $passingMarks, status: $status, examType: $examType, batchSubject: $batchSubject, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$ExamModelCopyWith<$Res> implements $ExamModelCopyWith<$Res> {
  factory _$ExamModelCopyWith(_ExamModel value, $Res Function(_ExamModel) _then) = __$ExamModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'exam_date') String? examDate,@JsonKey(name: 'exam_time') String? examTime,@JsonKey(name: 'exam_end_time') String? examEndTime,@JsonKey(name: 'total_marks') int? totalMarks,@JsonKey(name: 'passing_marks') int? passingMarks, String? status,@JsonKey(name: 'exam_type') ExamType? examType,@JsonKey(name: 'batch_subject') BatchSubject? batchSubject, String? remarks
});


@override $ExamTypeCopyWith<$Res>? get examType;@override $BatchSubjectCopyWith<$Res>? get batchSubject;

}
/// @nodoc
class __$ExamModelCopyWithImpl<$Res>
    implements _$ExamModelCopyWith<$Res> {
  __$ExamModelCopyWithImpl(this._self, this._then);

  final _ExamModel _self;
  final $Res Function(_ExamModel) _then;

/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? examDate = freezed,Object? examTime = freezed,Object? examEndTime = freezed,Object? totalMarks = freezed,Object? passingMarks = freezed,Object? status = freezed,Object? examType = freezed,Object? batchSubject = freezed,Object? remarks = freezed,}) {
  return _then(_ExamModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as String?,examTime: freezed == examTime ? _self.examTime : examTime // ignore: cast_nullable_to_non_nullable
as String?,examEndTime: freezed == examEndTime ? _self.examEndTime : examEndTime // ignore: cast_nullable_to_non_nullable
as String?,totalMarks: freezed == totalMarks ? _self.totalMarks : totalMarks // ignore: cast_nullable_to_non_nullable
as int?,passingMarks: freezed == passingMarks ? _self.passingMarks : passingMarks // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamType?,batchSubject: freezed == batchSubject ? _self.batchSubject : batchSubject // ignore: cast_nullable_to_non_nullable
as BatchSubject?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamTypeCopyWith<$Res>? get examType {
    if (_self.examType == null) {
    return null;
  }

  return $ExamTypeCopyWith<$Res>(_self.examType!, (value) {
    return _then(_self.copyWith(examType: value));
  });
}/// Create a copy of ExamModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BatchSubjectCopyWith<$Res>? get batchSubject {
    if (_self.batchSubject == null) {
    return null;
  }

  return $BatchSubjectCopyWith<$Res>(_self.batchSubject!, (value) {
    return _then(_self.copyWith(batchSubject: value));
  });
}
}


/// @nodoc
mixin _$ExamType {

 int? get id; String? get name; String? get description;
/// Create a copy of ExamType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamTypeCopyWith<ExamType> get copyWith => _$ExamTypeCopyWithImpl<ExamType>(this as ExamType, _$identity);

  /// Serializes this ExamType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'ExamType(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $ExamTypeCopyWith<$Res>  {
  factory $ExamTypeCopyWith(ExamType value, $Res Function(ExamType) _then) = _$ExamTypeCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? description
});




}
/// @nodoc
class _$ExamTypeCopyWithImpl<$Res>
    implements $ExamTypeCopyWith<$Res> {
  _$ExamTypeCopyWithImpl(this._self, this._then);

  final ExamType _self;
  final $Res Function(ExamType) _then;

/// Create a copy of ExamType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamType].
extension ExamTypePatterns on ExamType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamType value)  $default,){
final _that = this;
switch (_that) {
case _ExamType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamType value)?  $default,){
final _that = this;
switch (_that) {
case _ExamType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamType() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description)  $default,) {final _that = this;
switch (_that) {
case _ExamType():
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _ExamType() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamType implements ExamType {
  const _ExamType({this.id, this.name, this.description});
  factory _ExamType.fromJson(Map<String, dynamic> json) => _$ExamTypeFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? description;

/// Create a copy of ExamType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamTypeCopyWith<_ExamType> get copyWith => __$ExamTypeCopyWithImpl<_ExamType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'ExamType(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ExamTypeCopyWith<$Res> implements $ExamTypeCopyWith<$Res> {
  factory _$ExamTypeCopyWith(_ExamType value, $Res Function(_ExamType) _then) = __$ExamTypeCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? description
});




}
/// @nodoc
class __$ExamTypeCopyWithImpl<$Res>
    implements _$ExamTypeCopyWith<$Res> {
  __$ExamTypeCopyWithImpl(this._self, this._then);

  final _ExamType _self;
  final $Res Function(_ExamType) _then;

/// Create a copy of ExamType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_ExamType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BatchSubject {

 int? get id; Batch? get batch;@JsonKey(name: 'class_room') ClassRoom? get classRoom; Subject? get subject;
/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchSubjectCopyWith<BatchSubject> get copyWith => _$BatchSubjectCopyWithImpl<BatchSubject>(this as BatchSubject, _$identity);

  /// Serializes this BatchSubject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchSubject&&(identical(other.id, id) || other.id == id)&&(identical(other.batch, batch) || other.batch == batch)&&(identical(other.classRoom, classRoom) || other.classRoom == classRoom)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,batch,classRoom,subject);

@override
String toString() {
  return 'BatchSubject(id: $id, batch: $batch, classRoom: $classRoom, subject: $subject)';
}


}

/// @nodoc
abstract mixin class $BatchSubjectCopyWith<$Res>  {
  factory $BatchSubjectCopyWith(BatchSubject value, $Res Function(BatchSubject) _then) = _$BatchSubjectCopyWithImpl;
@useResult
$Res call({
 int? id, Batch? batch,@JsonKey(name: 'class_room') ClassRoom? classRoom, Subject? subject
});


$BatchCopyWith<$Res>? get batch;$ClassRoomCopyWith<$Res>? get classRoom;$SubjectCopyWith<$Res>? get subject;

}
/// @nodoc
class _$BatchSubjectCopyWithImpl<$Res>
    implements $BatchSubjectCopyWith<$Res> {
  _$BatchSubjectCopyWithImpl(this._self, this._then);

  final BatchSubject _self;
  final $Res Function(BatchSubject) _then;

/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? batch = freezed,Object? classRoom = freezed,Object? subject = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,batch: freezed == batch ? _self.batch : batch // ignore: cast_nullable_to_non_nullable
as Batch?,classRoom: freezed == classRoom ? _self.classRoom : classRoom // ignore: cast_nullable_to_non_nullable
as ClassRoom?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as Subject?,
  ));
}
/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BatchCopyWith<$Res>? get batch {
    if (_self.batch == null) {
    return null;
  }

  return $BatchCopyWith<$Res>(_self.batch!, (value) {
    return _then(_self.copyWith(batch: value));
  });
}/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRoomCopyWith<$Res>? get classRoom {
    if (_self.classRoom == null) {
    return null;
  }

  return $ClassRoomCopyWith<$Res>(_self.classRoom!, (value) {
    return _then(_self.copyWith(classRoom: value));
  });
}/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}
}


/// Adds pattern-matching-related methods to [BatchSubject].
extension BatchSubjectPatterns on BatchSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BatchSubject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BatchSubject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BatchSubject value)  $default,){
final _that = this;
switch (_that) {
case _BatchSubject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BatchSubject value)?  $default,){
final _that = this;
switch (_that) {
case _BatchSubject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  Batch? batch, @JsonKey(name: 'class_room')  ClassRoom? classRoom,  Subject? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BatchSubject() when $default != null:
return $default(_that.id,_that.batch,_that.classRoom,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  Batch? batch, @JsonKey(name: 'class_room')  ClassRoom? classRoom,  Subject? subject)  $default,) {final _that = this;
switch (_that) {
case _BatchSubject():
return $default(_that.id,_that.batch,_that.classRoom,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  Batch? batch, @JsonKey(name: 'class_room')  ClassRoom? classRoom,  Subject? subject)?  $default,) {final _that = this;
switch (_that) {
case _BatchSubject() when $default != null:
return $default(_that.id,_that.batch,_that.classRoom,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BatchSubject implements BatchSubject {
  const _BatchSubject({this.id, this.batch, @JsonKey(name: 'class_room') this.classRoom, this.subject});
  factory _BatchSubject.fromJson(Map<String, dynamic> json) => _$BatchSubjectFromJson(json);

@override final  int? id;
@override final  Batch? batch;
@override@JsonKey(name: 'class_room') final  ClassRoom? classRoom;
@override final  Subject? subject;

/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchSubjectCopyWith<_BatchSubject> get copyWith => __$BatchSubjectCopyWithImpl<_BatchSubject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BatchSubjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BatchSubject&&(identical(other.id, id) || other.id == id)&&(identical(other.batch, batch) || other.batch == batch)&&(identical(other.classRoom, classRoom) || other.classRoom == classRoom)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,batch,classRoom,subject);

@override
String toString() {
  return 'BatchSubject(id: $id, batch: $batch, classRoom: $classRoom, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$BatchSubjectCopyWith<$Res> implements $BatchSubjectCopyWith<$Res> {
  factory _$BatchSubjectCopyWith(_BatchSubject value, $Res Function(_BatchSubject) _then) = __$BatchSubjectCopyWithImpl;
@override @useResult
$Res call({
 int? id, Batch? batch,@JsonKey(name: 'class_room') ClassRoom? classRoom, Subject? subject
});


@override $BatchCopyWith<$Res>? get batch;@override $ClassRoomCopyWith<$Res>? get classRoom;@override $SubjectCopyWith<$Res>? get subject;

}
/// @nodoc
class __$BatchSubjectCopyWithImpl<$Res>
    implements _$BatchSubjectCopyWith<$Res> {
  __$BatchSubjectCopyWithImpl(this._self, this._then);

  final _BatchSubject _self;
  final $Res Function(_BatchSubject) _then;

/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? batch = freezed,Object? classRoom = freezed,Object? subject = freezed,}) {
  return _then(_BatchSubject(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,batch: freezed == batch ? _self.batch : batch // ignore: cast_nullable_to_non_nullable
as Batch?,classRoom: freezed == classRoom ? _self.classRoom : classRoom // ignore: cast_nullable_to_non_nullable
as ClassRoom?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as Subject?,
  ));
}

/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BatchCopyWith<$Res>? get batch {
    if (_self.batch == null) {
    return null;
  }

  return $BatchCopyWith<$Res>(_self.batch!, (value) {
    return _then(_self.copyWith(batch: value));
  });
}/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRoomCopyWith<$Res>? get classRoom {
    if (_self.classRoom == null) {
    return null;
  }

  return $ClassRoomCopyWith<$Res>(_self.classRoom!, (value) {
    return _then(_self.copyWith(classRoom: value));
  });
}/// Create a copy of BatchSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
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
mixin _$ClassRoom {

 int? get id; String? get name; String? get code;
/// Create a copy of ClassRoom
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassRoomCopyWith<ClassRoom> get copyWith => _$ClassRoomCopyWithImpl<ClassRoom>(this as ClassRoom, _$identity);

  /// Serializes this ClassRoom to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassRoom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code);

@override
String toString() {
  return 'ClassRoom(id: $id, name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class $ClassRoomCopyWith<$Res>  {
  factory $ClassRoomCopyWith(ClassRoom value, $Res Function(ClassRoom) _then) = _$ClassRoomCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? code
});




}
/// @nodoc
class _$ClassRoomCopyWithImpl<$Res>
    implements $ClassRoomCopyWith<$Res> {
  _$ClassRoomCopyWithImpl(this._self, this._then);

  final ClassRoom _self;
  final $Res Function(ClassRoom) _then;

/// Create a copy of ClassRoom
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassRoom].
extension ClassRoomPatterns on ClassRoom {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassRoom value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassRoom() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassRoom value)  $default,){
final _that = this;
switch (_that) {
case _ClassRoom():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassRoom value)?  $default,){
final _that = this;
switch (_that) {
case _ClassRoom() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassRoom() when $default != null:
return $default(_that.id,_that.name,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ClassRoom():
return $default(_that.id,_that.name,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ClassRoom() when $default != null:
return $default(_that.id,_that.name,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassRoom implements ClassRoom {
  const _ClassRoom({this.id, this.name, this.code});
  factory _ClassRoom.fromJson(Map<String, dynamic> json) => _$ClassRoomFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? code;

/// Create a copy of ClassRoom
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassRoomCopyWith<_ClassRoom> get copyWith => __$ClassRoomCopyWithImpl<_ClassRoom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassRoomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassRoom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code);

@override
String toString() {
  return 'ClassRoom(id: $id, name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ClassRoomCopyWith<$Res> implements $ClassRoomCopyWith<$Res> {
  factory _$ClassRoomCopyWith(_ClassRoom value, $Res Function(_ClassRoom) _then) = __$ClassRoomCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? code
});




}
/// @nodoc
class __$ClassRoomCopyWithImpl<$Res>
    implements _$ClassRoomCopyWith<$Res> {
  __$ClassRoomCopyWithImpl(this._self, this._then);

  final _ClassRoom _self;
  final $Res Function(_ClassRoom) _then;

/// Create a copy of ClassRoom
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,}) {
  return _then(_ClassRoom(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Subject {

 int? get id; String? get name;
/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectCopyWith<Subject> get copyWith => _$SubjectCopyWithImpl<Subject>(this as Subject, _$identity);

  /// Serializes this Subject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Subject(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $SubjectCopyWith<$Res>  {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) _then) = _$SubjectCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$SubjectCopyWithImpl<$Res>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._self, this._then);

  final Subject _self;
  final $Res Function(Subject) _then;

/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Subject].
extension SubjectPatterns on Subject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Subject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Subject value)  $default,){
final _that = this;
switch (_that) {
case _Subject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Subject value)?  $default,){
final _that = this;
switch (_that) {
case _Subject() when $default != null:
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
case _Subject() when $default != null:
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
case _Subject():
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
case _Subject() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Subject implements Subject {
  const _Subject({this.id, this.name});
  factory _Subject.fromJson(Map<String, dynamic> json) => _$SubjectFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectCopyWith<_Subject> get copyWith => __$SubjectCopyWithImpl<_Subject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Subject(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SubjectCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$SubjectCopyWith(_Subject value, $Res Function(_Subject) _then) = __$SubjectCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$SubjectCopyWithImpl<$Res>
    implements _$SubjectCopyWith<$Res> {
  __$SubjectCopyWithImpl(this._self, this._then);

  final _Subject _self;
  final $Res Function(_Subject) _then;

/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Subject(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
