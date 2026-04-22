// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentScheduleResponse {

 bool? get status; String? get message; ScheduleData? get data;
/// Create a copy of StudentScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentScheduleResponseCopyWith<StudentScheduleResponse> get copyWith => _$StudentScheduleResponseCopyWithImpl<StudentScheduleResponse>(this as StudentScheduleResponse, _$identity);

  /// Serializes this StudentScheduleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentScheduleResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'StudentScheduleResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $StudentScheduleResponseCopyWith<$Res>  {
  factory $StudentScheduleResponseCopyWith(StudentScheduleResponse value, $Res Function(StudentScheduleResponse) _then) = _$StudentScheduleResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, ScheduleData? data
});


$ScheduleDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$StudentScheduleResponseCopyWithImpl<$Res>
    implements $StudentScheduleResponseCopyWith<$Res> {
  _$StudentScheduleResponseCopyWithImpl(this._self, this._then);

  final StudentScheduleResponse _self;
  final $Res Function(StudentScheduleResponse) _then;

/// Create a copy of StudentScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleData?,
  ));
}
/// Create a copy of StudentScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ScheduleDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentScheduleResponse].
extension StudentScheduleResponsePatterns on StudentScheduleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentScheduleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentScheduleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentScheduleResponse value)  $default,){
final _that = this;
switch (_that) {
case _StudentScheduleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentScheduleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StudentScheduleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  ScheduleData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentScheduleResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  ScheduleData? data)  $default,) {final _that = this;
switch (_that) {
case _StudentScheduleResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  ScheduleData? data)?  $default,) {final _that = this;
switch (_that) {
case _StudentScheduleResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentScheduleResponse implements StudentScheduleResponse {
  const _StudentScheduleResponse({this.status, this.message, this.data});
  factory _StudentScheduleResponse.fromJson(Map<String, dynamic> json) => _$StudentScheduleResponseFromJson(json);

@override final  bool? status;
@override final  String? message;
@override final  ScheduleData? data;

/// Create a copy of StudentScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentScheduleResponseCopyWith<_StudentScheduleResponse> get copyWith => __$StudentScheduleResponseCopyWithImpl<_StudentScheduleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentScheduleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentScheduleResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'StudentScheduleResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StudentScheduleResponseCopyWith<$Res> implements $StudentScheduleResponseCopyWith<$Res> {
  factory _$StudentScheduleResponseCopyWith(_StudentScheduleResponse value, $Res Function(_StudentScheduleResponse) _then) = __$StudentScheduleResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, ScheduleData? data
});


@override $ScheduleDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$StudentScheduleResponseCopyWithImpl<$Res>
    implements _$StudentScheduleResponseCopyWith<$Res> {
  __$StudentScheduleResponseCopyWithImpl(this._self, this._then);

  final _StudentScheduleResponse _self;
  final $Res Function(_StudentScheduleResponse) _then;

/// Create a copy of StudentScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_StudentScheduleResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ScheduleData?,
  ));
}

/// Create a copy of StudentScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ScheduleDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ScheduleData {

@JsonKey(name: 'periods_count') int? get periodsCount; Map<String, Map<String, List<PeriodModel>>>? get periods;
/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleDataCopyWith<ScheduleData> get copyWith => _$ScheduleDataCopyWithImpl<ScheduleData>(this as ScheduleData, _$identity);

  /// Serializes this ScheduleData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleData&&(identical(other.periodsCount, periodsCount) || other.periodsCount == periodsCount)&&const DeepCollectionEquality().equals(other.periods, periods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,periodsCount,const DeepCollectionEquality().hash(periods));

@override
String toString() {
  return 'ScheduleData(periodsCount: $periodsCount, periods: $periods)';
}


}

/// @nodoc
abstract mixin class $ScheduleDataCopyWith<$Res>  {
  factory $ScheduleDataCopyWith(ScheduleData value, $Res Function(ScheduleData) _then) = _$ScheduleDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'periods_count') int? periodsCount, Map<String, Map<String, List<PeriodModel>>>? periods
});




}
/// @nodoc
class _$ScheduleDataCopyWithImpl<$Res>
    implements $ScheduleDataCopyWith<$Res> {
  _$ScheduleDataCopyWithImpl(this._self, this._then);

  final ScheduleData _self;
  final $Res Function(ScheduleData) _then;

/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? periodsCount = freezed,Object? periods = freezed,}) {
  return _then(_self.copyWith(
periodsCount: freezed == periodsCount ? _self.periodsCount : periodsCount // ignore: cast_nullable_to_non_nullable
as int?,periods: freezed == periods ? _self.periods : periods // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, List<PeriodModel>>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScheduleData].
extension ScheduleDataPatterns on ScheduleData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleData value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleData value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'periods_count')  int? periodsCount,  Map<String, Map<String, List<PeriodModel>>>? periods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
return $default(_that.periodsCount,_that.periods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'periods_count')  int? periodsCount,  Map<String, Map<String, List<PeriodModel>>>? periods)  $default,) {final _that = this;
switch (_that) {
case _ScheduleData():
return $default(_that.periodsCount,_that.periods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'periods_count')  int? periodsCount,  Map<String, Map<String, List<PeriodModel>>>? periods)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleData() when $default != null:
return $default(_that.periodsCount,_that.periods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleData implements ScheduleData {
  const _ScheduleData({@JsonKey(name: 'periods_count') this.periodsCount, final  Map<String, Map<String, List<PeriodModel>>>? periods}): _periods = periods;
  factory _ScheduleData.fromJson(Map<String, dynamic> json) => _$ScheduleDataFromJson(json);

@override@JsonKey(name: 'periods_count') final  int? periodsCount;
 final  Map<String, Map<String, List<PeriodModel>>>? _periods;
@override Map<String, Map<String, List<PeriodModel>>>? get periods {
  final value = _periods;
  if (value == null) return null;
  if (_periods is EqualUnmodifiableMapView) return _periods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleDataCopyWith<_ScheduleData> get copyWith => __$ScheduleDataCopyWithImpl<_ScheduleData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleData&&(identical(other.periodsCount, periodsCount) || other.periodsCount == periodsCount)&&const DeepCollectionEquality().equals(other._periods, _periods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,periodsCount,const DeepCollectionEquality().hash(_periods));

@override
String toString() {
  return 'ScheduleData(periodsCount: $periodsCount, periods: $periods)';
}


}

/// @nodoc
abstract mixin class _$ScheduleDataCopyWith<$Res> implements $ScheduleDataCopyWith<$Res> {
  factory _$ScheduleDataCopyWith(_ScheduleData value, $Res Function(_ScheduleData) _then) = __$ScheduleDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'periods_count') int? periodsCount, Map<String, Map<String, List<PeriodModel>>>? periods
});




}
/// @nodoc
class __$ScheduleDataCopyWithImpl<$Res>
    implements _$ScheduleDataCopyWith<$Res> {
  __$ScheduleDataCopyWithImpl(this._self, this._then);

  final _ScheduleData _self;
  final $Res Function(_ScheduleData) _then;

/// Create a copy of ScheduleData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? periodsCount = freezed,Object? periods = freezed,}) {
  return _then(_ScheduleData(
periodsCount: freezed == periodsCount ? _self.periodsCount : periodsCount // ignore: cast_nullable_to_non_nullable
as int?,periods: freezed == periods ? _self._periods : periods // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, List<PeriodModel>>>?,
  ));
}


}


/// @nodoc
mixin _$PeriodModel {

@JsonKey(name: 'batch_name') String? get batchName; String? get subject;@JsonKey(name: 'class_room') String? get classRoom;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime; String? get type;
/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeriodModelCopyWith<PeriodModel> get copyWith => _$PeriodModelCopyWithImpl<PeriodModel>(this as PeriodModel, _$identity);

  /// Serializes this PeriodModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeriodModel&&(identical(other.batchName, batchName) || other.batchName == batchName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.classRoom, classRoom) || other.classRoom == classRoom)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchName,subject,classRoom,startTime,endTime,type);

@override
String toString() {
  return 'PeriodModel(batchName: $batchName, subject: $subject, classRoom: $classRoom, startTime: $startTime, endTime: $endTime, type: $type)';
}


}

/// @nodoc
abstract mixin class $PeriodModelCopyWith<$Res>  {
  factory $PeriodModelCopyWith(PeriodModel value, $Res Function(PeriodModel) _then) = _$PeriodModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'batch_name') String? batchName, String? subject,@JsonKey(name: 'class_room') String? classRoom,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime, String? type
});




}
/// @nodoc
class _$PeriodModelCopyWithImpl<$Res>
    implements $PeriodModelCopyWith<$Res> {
  _$PeriodModelCopyWithImpl(this._self, this._then);

  final PeriodModel _self;
  final $Res Function(PeriodModel) _then;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? batchName = freezed,Object? subject = freezed,Object? classRoom = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
batchName: freezed == batchName ? _self.batchName : batchName // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,classRoom: freezed == classRoom ? _self.classRoom : classRoom // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PeriodModel].
extension PeriodModelPatterns on PeriodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeriodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeriodModel value)  $default,){
final _that = this;
switch (_that) {
case _PeriodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeriodModel value)?  $default,){
final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'batch_name')  String? batchName,  String? subject, @JsonKey(name: 'class_room')  String? classRoom, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
return $default(_that.batchName,_that.subject,_that.classRoom,_that.startTime,_that.endTime,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'batch_name')  String? batchName,  String? subject, @JsonKey(name: 'class_room')  String? classRoom, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime,  String? type)  $default,) {final _that = this;
switch (_that) {
case _PeriodModel():
return $default(_that.batchName,_that.subject,_that.classRoom,_that.startTime,_that.endTime,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'batch_name')  String? batchName,  String? subject, @JsonKey(name: 'class_room')  String? classRoom, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
return $default(_that.batchName,_that.subject,_that.classRoom,_that.startTime,_that.endTime,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PeriodModel implements PeriodModel {
  const _PeriodModel({@JsonKey(name: 'batch_name') this.batchName, this.subject, @JsonKey(name: 'class_room') this.classRoom, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, this.type});
  factory _PeriodModel.fromJson(Map<String, dynamic> json) => _$PeriodModelFromJson(json);

@override@JsonKey(name: 'batch_name') final  String? batchName;
@override final  String? subject;
@override@JsonKey(name: 'class_room') final  String? classRoom;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override final  String? type;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodModelCopyWith<_PeriodModel> get copyWith => __$PeriodModelCopyWithImpl<_PeriodModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeriodModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeriodModel&&(identical(other.batchName, batchName) || other.batchName == batchName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.classRoom, classRoom) || other.classRoom == classRoom)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchName,subject,classRoom,startTime,endTime,type);

@override
String toString() {
  return 'PeriodModel(batchName: $batchName, subject: $subject, classRoom: $classRoom, startTime: $startTime, endTime: $endTime, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PeriodModelCopyWith<$Res> implements $PeriodModelCopyWith<$Res> {
  factory _$PeriodModelCopyWith(_PeriodModel value, $Res Function(_PeriodModel) _then) = __$PeriodModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'batch_name') String? batchName, String? subject,@JsonKey(name: 'class_room') String? classRoom,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime, String? type
});




}
/// @nodoc
class __$PeriodModelCopyWithImpl<$Res>
    implements _$PeriodModelCopyWith<$Res> {
  __$PeriodModelCopyWithImpl(this._self, this._then);

  final _PeriodModel _self;
  final $Res Function(_PeriodModel) _then;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? batchName = freezed,Object? subject = freezed,Object? classRoom = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? type = freezed,}) {
  return _then(_PeriodModel(
batchName: freezed == batchName ? _self.batchName : batchName // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,classRoom: freezed == classRoom ? _self.classRoom : classRoom // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
