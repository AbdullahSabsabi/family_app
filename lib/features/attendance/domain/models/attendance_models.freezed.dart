// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceResponse {

@JsonKey(name: 'student_id') dynamic get studentId;@JsonKey(name: 'attended_today') bool? get attendedToday; int? get count; List<AttendanceRecord>? get records;
/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceResponseCopyWith<AttendanceResponse> get copyWith => _$AttendanceResponseCopyWithImpl<AttendanceResponse>(this as AttendanceResponse, _$identity);

  /// Serializes this AttendanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceResponse&&const DeepCollectionEquality().equals(other.studentId, studentId)&&(identical(other.attendedToday, attendedToday) || other.attendedToday == attendedToday)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.records, records));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(studentId),attendedToday,count,const DeepCollectionEquality().hash(records));

@override
String toString() {
  return 'AttendanceResponse(studentId: $studentId, attendedToday: $attendedToday, count: $count, records: $records)';
}


}

/// @nodoc
abstract mixin class $AttendanceResponseCopyWith<$Res>  {
  factory $AttendanceResponseCopyWith(AttendanceResponse value, $Res Function(AttendanceResponse) _then) = _$AttendanceResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') dynamic studentId,@JsonKey(name: 'attended_today') bool? attendedToday, int? count, List<AttendanceRecord>? records
});




}
/// @nodoc
class _$AttendanceResponseCopyWithImpl<$Res>
    implements $AttendanceResponseCopyWith<$Res> {
  _$AttendanceResponseCopyWithImpl(this._self, this._then);

  final AttendanceResponse _self;
  final $Res Function(AttendanceResponse) _then;

/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? attendedToday = freezed,Object? count = freezed,Object? records = freezed,}) {
  return _then(_self.copyWith(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as dynamic,attendedToday: freezed == attendedToday ? _self.attendedToday : attendedToday // ignore: cast_nullable_to_non_nullable
as bool?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,records: freezed == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceResponse].
extension AttendanceResponsePatterns on AttendanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  dynamic studentId, @JsonKey(name: 'attended_today')  bool? attendedToday,  int? count,  List<AttendanceRecord>? records)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
return $default(_that.studentId,_that.attendedToday,_that.count,_that.records);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  dynamic studentId, @JsonKey(name: 'attended_today')  bool? attendedToday,  int? count,  List<AttendanceRecord>? records)  $default,) {final _that = this;
switch (_that) {
case _AttendanceResponse():
return $default(_that.studentId,_that.attendedToday,_that.count,_that.records);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  dynamic studentId, @JsonKey(name: 'attended_today')  bool? attendedToday,  int? count,  List<AttendanceRecord>? records)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
return $default(_that.studentId,_that.attendedToday,_that.count,_that.records);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceResponse implements AttendanceResponse {
  const _AttendanceResponse({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'attended_today') this.attendedToday, this.count, final  List<AttendanceRecord>? records}): _records = records;
  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) => _$AttendanceResponseFromJson(json);

@override@JsonKey(name: 'student_id') final  dynamic studentId;
@override@JsonKey(name: 'attended_today') final  bool? attendedToday;
@override final  int? count;
 final  List<AttendanceRecord>? _records;
@override List<AttendanceRecord>? get records {
  final value = _records;
  if (value == null) return null;
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceResponseCopyWith<_AttendanceResponse> get copyWith => __$AttendanceResponseCopyWithImpl<_AttendanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceResponse&&const DeepCollectionEquality().equals(other.studentId, studentId)&&(identical(other.attendedToday, attendedToday) || other.attendedToday == attendedToday)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._records, _records));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(studentId),attendedToday,count,const DeepCollectionEquality().hash(_records));

@override
String toString() {
  return 'AttendanceResponse(studentId: $studentId, attendedToday: $attendedToday, count: $count, records: $records)';
}


}

/// @nodoc
abstract mixin class _$AttendanceResponseCopyWith<$Res> implements $AttendanceResponseCopyWith<$Res> {
  factory _$AttendanceResponseCopyWith(_AttendanceResponse value, $Res Function(_AttendanceResponse) _then) = __$AttendanceResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') dynamic studentId,@JsonKey(name: 'attended_today') bool? attendedToday, int? count, List<AttendanceRecord>? records
});




}
/// @nodoc
class __$AttendanceResponseCopyWithImpl<$Res>
    implements _$AttendanceResponseCopyWith<$Res> {
  __$AttendanceResponseCopyWithImpl(this._self, this._then);

  final _AttendanceResponse _self;
  final $Res Function(_AttendanceResponse) _then;

/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? attendedToday = freezed,Object? count = freezed,Object? records = freezed,}) {
  return _then(_AttendanceResponse(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as dynamic,attendedToday: freezed == attendedToday ? _self.attendedToday : attendedToday // ignore: cast_nullable_to_non_nullable
as bool?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,records: freezed == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>?,
  ));
}


}


/// @nodoc
mixin _$AttendanceRecord {

 String? get date;@JsonKey(name: 'check_in') String? get checkIn;@JsonKey(name: 'check_out') String? get checkOut; String? get status;
/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<AttendanceRecord> get copyWith => _$AttendanceRecordCopyWithImpl<AttendanceRecord>(this as AttendanceRecord, _$identity);

  /// Serializes this AttendanceRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecord&&(identical(other.date, date) || other.date == date)&&(identical(other.checkIn, checkIn) || other.checkIn == checkIn)&&(identical(other.checkOut, checkOut) || other.checkOut == checkOut)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,checkIn,checkOut,status);

@override
String toString() {
  return 'AttendanceRecord(date: $date, checkIn: $checkIn, checkOut: $checkOut, status: $status)';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordCopyWith<$Res>  {
  factory $AttendanceRecordCopyWith(AttendanceRecord value, $Res Function(AttendanceRecord) _then) = _$AttendanceRecordCopyWithImpl;
@useResult
$Res call({
 String? date,@JsonKey(name: 'check_in') String? checkIn,@JsonKey(name: 'check_out') String? checkOut, String? status
});




}
/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._self, this._then);

  final AttendanceRecord _self;
  final $Res Function(AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? checkIn = freezed,Object? checkOut = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,checkIn: freezed == checkIn ? _self.checkIn : checkIn // ignore: cast_nullable_to_non_nullable
as String?,checkOut: freezed == checkOut ? _self.checkOut : checkOut // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceRecord].
extension AttendanceRecordPatterns on AttendanceRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? date, @JsonKey(name: 'check_in')  String? checkIn, @JsonKey(name: 'check_out')  String? checkOut,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.date,_that.checkIn,_that.checkOut,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? date, @JsonKey(name: 'check_in')  String? checkIn, @JsonKey(name: 'check_out')  String? checkOut,  String? status)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord():
return $default(_that.date,_that.checkIn,_that.checkOut,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? date, @JsonKey(name: 'check_in')  String? checkIn, @JsonKey(name: 'check_out')  String? checkOut,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.date,_that.checkIn,_that.checkOut,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceRecord implements AttendanceRecord {
  const _AttendanceRecord({this.date, @JsonKey(name: 'check_in') this.checkIn, @JsonKey(name: 'check_out') this.checkOut, this.status});
  factory _AttendanceRecord.fromJson(Map<String, dynamic> json) => _$AttendanceRecordFromJson(json);

@override final  String? date;
@override@JsonKey(name: 'check_in') final  String? checkIn;
@override@JsonKey(name: 'check_out') final  String? checkOut;
@override final  String? status;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordCopyWith<_AttendanceRecord> get copyWith => __$AttendanceRecordCopyWithImpl<_AttendanceRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecord&&(identical(other.date, date) || other.date == date)&&(identical(other.checkIn, checkIn) || other.checkIn == checkIn)&&(identical(other.checkOut, checkOut) || other.checkOut == checkOut)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,checkIn,checkOut,status);

@override
String toString() {
  return 'AttendanceRecord(date: $date, checkIn: $checkIn, checkOut: $checkOut, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordCopyWith<$Res> implements $AttendanceRecordCopyWith<$Res> {
  factory _$AttendanceRecordCopyWith(_AttendanceRecord value, $Res Function(_AttendanceRecord) _then) = __$AttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
 String? date,@JsonKey(name: 'check_in') String? checkIn,@JsonKey(name: 'check_out') String? checkOut, String? status
});




}
/// @nodoc
class __$AttendanceRecordCopyWithImpl<$Res>
    implements _$AttendanceRecordCopyWith<$Res> {
  __$AttendanceRecordCopyWithImpl(this._self, this._then);

  final _AttendanceRecord _self;
  final $Res Function(_AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? checkIn = freezed,Object? checkOut = freezed,Object? status = freezed,}) {
  return _then(_AttendanceRecord(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,checkIn: freezed == checkIn ? _self.checkIn : checkIn // ignore: cast_nullable_to_non_nullable
as String?,checkOut: freezed == checkOut ? _self.checkOut : checkOut // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
