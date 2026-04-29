// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QrSessionResponse {

 bool get status; String get message; dynamic get data;
/// Create a copy of QrSessionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrSessionResponseCopyWith<QrSessionResponse> get copyWith => _$QrSessionResponseCopyWithImpl<QrSessionResponse>(this as QrSessionResponse, _$identity);

  /// Serializes this QrSessionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrSessionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'QrSessionResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $QrSessionResponseCopyWith<$Res>  {
  factory $QrSessionResponseCopyWith(QrSessionResponse value, $Res Function(QrSessionResponse) _then) = _$QrSessionResponseCopyWithImpl;
@useResult
$Res call({
 bool status, String message, dynamic data
});




}
/// @nodoc
class _$QrSessionResponseCopyWithImpl<$Res>
    implements $QrSessionResponseCopyWith<$Res> {
  _$QrSessionResponseCopyWithImpl(this._self, this._then);

  final QrSessionResponse _self;
  final $Res Function(QrSessionResponse) _then;

/// Create a copy of QrSessionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [QrSessionResponse].
extension QrSessionResponsePatterns on QrSessionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrSessionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrSessionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrSessionResponse value)  $default,){
final _that = this;
switch (_that) {
case _QrSessionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrSessionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _QrSessionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  dynamic data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrSessionResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  dynamic data)  $default,) {final _that = this;
switch (_that) {
case _QrSessionResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  dynamic data)?  $default,) {final _that = this;
switch (_that) {
case _QrSessionResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrSessionResponse implements QrSessionResponse {
  const _QrSessionResponse({required this.status, required this.message, this.data});
  factory _QrSessionResponse.fromJson(Map<String, dynamic> json) => _$QrSessionResponseFromJson(json);

@override final  bool status;
@override final  String message;
@override final  dynamic data;

/// Create a copy of QrSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrSessionResponseCopyWith<_QrSessionResponse> get copyWith => __$QrSessionResponseCopyWithImpl<_QrSessionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrSessionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrSessionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'QrSessionResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$QrSessionResponseCopyWith<$Res> implements $QrSessionResponseCopyWith<$Res> {
  factory _$QrSessionResponseCopyWith(_QrSessionResponse value, $Res Function(_QrSessionResponse) _then) = __$QrSessionResponseCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, dynamic data
});




}
/// @nodoc
class __$QrSessionResponseCopyWithImpl<$Res>
    implements _$QrSessionResponseCopyWith<$Res> {
  __$QrSessionResponseCopyWithImpl(this._self, this._then);

  final _QrSessionResponse _self;
  final $Res Function(_QrSessionResponse) _then;

/// Create a copy of QrSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_QrSessionResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
