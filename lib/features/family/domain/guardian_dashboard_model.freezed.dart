// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guardian_dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuardianDashboardModel {

 bool get status; String get message; GuardianDashboardData? get data;
/// Create a copy of GuardianDashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianDashboardModelCopyWith<GuardianDashboardModel> get copyWith => _$GuardianDashboardModelCopyWithImpl<GuardianDashboardModel>(this as GuardianDashboardModel, _$identity);

  /// Serializes this GuardianDashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuardianDashboardModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GuardianDashboardModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GuardianDashboardModelCopyWith<$Res>  {
  factory $GuardianDashboardModelCopyWith(GuardianDashboardModel value, $Res Function(GuardianDashboardModel) _then) = _$GuardianDashboardModelCopyWithImpl;
@useResult
$Res call({
 bool status, String message, GuardianDashboardData? data
});


$GuardianDashboardDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$GuardianDashboardModelCopyWithImpl<$Res>
    implements $GuardianDashboardModelCopyWith<$Res> {
  _$GuardianDashboardModelCopyWithImpl(this._self, this._then);

  final GuardianDashboardModel _self;
  final $Res Function(GuardianDashboardModel) _then;

/// Create a copy of GuardianDashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GuardianDashboardData?,
  ));
}
/// Create a copy of GuardianDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianDashboardDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GuardianDashboardDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GuardianDashboardModel].
extension GuardianDashboardModelPatterns on GuardianDashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuardianDashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuardianDashboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuardianDashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _GuardianDashboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuardianDashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _GuardianDashboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  GuardianDashboardData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuardianDashboardModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  GuardianDashboardData? data)  $default,) {final _that = this;
switch (_that) {
case _GuardianDashboardModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  GuardianDashboardData? data)?  $default,) {final _that = this;
switch (_that) {
case _GuardianDashboardModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuardianDashboardModel implements GuardianDashboardModel {
  const _GuardianDashboardModel({this.status = false, this.message = '', this.data});
  factory _GuardianDashboardModel.fromJson(Map<String, dynamic> json) => _$GuardianDashboardModelFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;
@override final  GuardianDashboardData? data;

/// Create a copy of GuardianDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuardianDashboardModelCopyWith<_GuardianDashboardModel> get copyWith => __$GuardianDashboardModelCopyWithImpl<_GuardianDashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuardianDashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuardianDashboardModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GuardianDashboardModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GuardianDashboardModelCopyWith<$Res> implements $GuardianDashboardModelCopyWith<$Res> {
  factory _$GuardianDashboardModelCopyWith(_GuardianDashboardModel value, $Res Function(_GuardianDashboardModel) _then) = __$GuardianDashboardModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, GuardianDashboardData? data
});


@override $GuardianDashboardDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$GuardianDashboardModelCopyWithImpl<$Res>
    implements _$GuardianDashboardModelCopyWith<$Res> {
  __$GuardianDashboardModelCopyWithImpl(this._self, this._then);

  final _GuardianDashboardModel _self;
  final $Res Function(_GuardianDashboardModel) _then;

/// Create a copy of GuardianDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_GuardianDashboardModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GuardianDashboardData?,
  ));
}

/// Create a copy of GuardianDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianDashboardDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GuardianDashboardDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GuardianDashboardData {

 GuardianInfo get guardian;@JsonKey(name: 'financial_summary') FinancialSummary get financialSummary; List<Child> get children;
/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianDashboardDataCopyWith<GuardianDashboardData> get copyWith => _$GuardianDashboardDataCopyWithImpl<GuardianDashboardData>(this as GuardianDashboardData, _$identity);

  /// Serializes this GuardianDashboardData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuardianDashboardData&&(identical(other.guardian, guardian) || other.guardian == guardian)&&(identical(other.financialSummary, financialSummary) || other.financialSummary == financialSummary)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guardian,financialSummary,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'GuardianDashboardData(guardian: $guardian, financialSummary: $financialSummary, children: $children)';
}


}

/// @nodoc
abstract mixin class $GuardianDashboardDataCopyWith<$Res>  {
  factory $GuardianDashboardDataCopyWith(GuardianDashboardData value, $Res Function(GuardianDashboardData) _then) = _$GuardianDashboardDataCopyWithImpl;
@useResult
$Res call({
 GuardianInfo guardian,@JsonKey(name: 'financial_summary') FinancialSummary financialSummary, List<Child> children
});


$GuardianInfoCopyWith<$Res> get guardian;$FinancialSummaryCopyWith<$Res> get financialSummary;

}
/// @nodoc
class _$GuardianDashboardDataCopyWithImpl<$Res>
    implements $GuardianDashboardDataCopyWith<$Res> {
  _$GuardianDashboardDataCopyWithImpl(this._self, this._then);

  final GuardianDashboardData _self;
  final $Res Function(GuardianDashboardData) _then;

/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guardian = null,Object? financialSummary = null,Object? children = null,}) {
  return _then(_self.copyWith(
guardian: null == guardian ? _self.guardian : guardian // ignore: cast_nullable_to_non_nullable
as GuardianInfo,financialSummary: null == financialSummary ? _self.financialSummary : financialSummary // ignore: cast_nullable_to_non_nullable
as FinancialSummary,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Child>,
  ));
}
/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianInfoCopyWith<$Res> get guardian {
  
  return $GuardianInfoCopyWith<$Res>(_self.guardian, (value) {
    return _then(_self.copyWith(guardian: value));
  });
}/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialSummaryCopyWith<$Res> get financialSummary {
  
  return $FinancialSummaryCopyWith<$Res>(_self.financialSummary, (value) {
    return _then(_self.copyWith(financialSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [GuardianDashboardData].
extension GuardianDashboardDataPatterns on GuardianDashboardData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuardianDashboardData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuardianDashboardData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuardianDashboardData value)  $default,){
final _that = this;
switch (_that) {
case _GuardianDashboardData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuardianDashboardData value)?  $default,){
final _that = this;
switch (_that) {
case _GuardianDashboardData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GuardianInfo guardian, @JsonKey(name: 'financial_summary')  FinancialSummary financialSummary,  List<Child> children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuardianDashboardData() when $default != null:
return $default(_that.guardian,_that.financialSummary,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GuardianInfo guardian, @JsonKey(name: 'financial_summary')  FinancialSummary financialSummary,  List<Child> children)  $default,) {final _that = this;
switch (_that) {
case _GuardianDashboardData():
return $default(_that.guardian,_that.financialSummary,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GuardianInfo guardian, @JsonKey(name: 'financial_summary')  FinancialSummary financialSummary,  List<Child> children)?  $default,) {final _that = this;
switch (_that) {
case _GuardianDashboardData() when $default != null:
return $default(_that.guardian,_that.financialSummary,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuardianDashboardData implements GuardianDashboardData {
  const _GuardianDashboardData({required this.guardian, @JsonKey(name: 'financial_summary') required this.financialSummary, final  List<Child> children = const []}): _children = children;
  factory _GuardianDashboardData.fromJson(Map<String, dynamic> json) => _$GuardianDashboardDataFromJson(json);

@override final  GuardianInfo guardian;
@override@JsonKey(name: 'financial_summary') final  FinancialSummary financialSummary;
 final  List<Child> _children;
@override@JsonKey() List<Child> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuardianDashboardDataCopyWith<_GuardianDashboardData> get copyWith => __$GuardianDashboardDataCopyWithImpl<_GuardianDashboardData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuardianDashboardDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuardianDashboardData&&(identical(other.guardian, guardian) || other.guardian == guardian)&&(identical(other.financialSummary, financialSummary) || other.financialSummary == financialSummary)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,guardian,financialSummary,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'GuardianDashboardData(guardian: $guardian, financialSummary: $financialSummary, children: $children)';
}


}

/// @nodoc
abstract mixin class _$GuardianDashboardDataCopyWith<$Res> implements $GuardianDashboardDataCopyWith<$Res> {
  factory _$GuardianDashboardDataCopyWith(_GuardianDashboardData value, $Res Function(_GuardianDashboardData) _then) = __$GuardianDashboardDataCopyWithImpl;
@override @useResult
$Res call({
 GuardianInfo guardian,@JsonKey(name: 'financial_summary') FinancialSummary financialSummary, List<Child> children
});


@override $GuardianInfoCopyWith<$Res> get guardian;@override $FinancialSummaryCopyWith<$Res> get financialSummary;

}
/// @nodoc
class __$GuardianDashboardDataCopyWithImpl<$Res>
    implements _$GuardianDashboardDataCopyWith<$Res> {
  __$GuardianDashboardDataCopyWithImpl(this._self, this._then);

  final _GuardianDashboardData _self;
  final $Res Function(_GuardianDashboardData) _then;

/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? guardian = null,Object? financialSummary = null,Object? children = null,}) {
  return _then(_GuardianDashboardData(
guardian: null == guardian ? _self.guardian : guardian // ignore: cast_nullable_to_non_nullable
as GuardianInfo,financialSummary: null == financialSummary ? _self.financialSummary : financialSummary // ignore: cast_nullable_to_non_nullable
as FinancialSummary,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Child>,
  ));
}

/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GuardianInfoCopyWith<$Res> get guardian {
  
  return $GuardianInfoCopyWith<$Res>(_self.guardian, (value) {
    return _then(_self.copyWith(guardian: value));
  });
}/// Create a copy of GuardianDashboardData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialSummaryCopyWith<$Res> get financialSummary {
  
  return $FinancialSummaryCopyWith<$Res>(_self.financialSummary, (value) {
    return _then(_self.copyWith(financialSummary: value));
  });
}
}


/// @nodoc
mixin _$GuardianInfo {

 int get id; String get name;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'welcome_message') String? get welcomeMessage;
/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianInfoCopyWith<GuardianInfo> get copyWith => _$GuardianInfoCopyWithImpl<GuardianInfo>(this as GuardianInfo, _$identity);

  /// Serializes this GuardianInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuardianInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photoUrl,welcomeMessage);

@override
String toString() {
  return 'GuardianInfo(id: $id, name: $name, photoUrl: $photoUrl, welcomeMessage: $welcomeMessage)';
}


}

/// @nodoc
abstract mixin class $GuardianInfoCopyWith<$Res>  {
  factory $GuardianInfoCopyWith(GuardianInfo value, $Res Function(GuardianInfo) _then) = _$GuardianInfoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'welcome_message') String? welcomeMessage
});




}
/// @nodoc
class _$GuardianInfoCopyWithImpl<$Res>
    implements $GuardianInfoCopyWith<$Res> {
  _$GuardianInfoCopyWithImpl(this._self, this._then);

  final GuardianInfo _self;
  final $Res Function(GuardianInfo) _then;

/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photoUrl = freezed,Object? welcomeMessage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,welcomeMessage: freezed == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GuardianInfo].
extension GuardianInfoPatterns on GuardianInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuardianInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuardianInfo value)  $default,){
final _that = this;
switch (_that) {
case _GuardianInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuardianInfo value)?  $default,){
final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'welcome_message')  String? welcomeMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
return $default(_that.id,_that.name,_that.photoUrl,_that.welcomeMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'welcome_message')  String? welcomeMessage)  $default,) {final _that = this;
switch (_that) {
case _GuardianInfo():
return $default(_that.id,_that.name,_that.photoUrl,_that.welcomeMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'welcome_message')  String? welcomeMessage)?  $default,) {final _that = this;
switch (_that) {
case _GuardianInfo() when $default != null:
return $default(_that.id,_that.name,_that.photoUrl,_that.welcomeMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuardianInfo implements GuardianInfo {
  const _GuardianInfo({required this.id, required this.name, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'welcome_message') this.welcomeMessage});
  factory _GuardianInfo.fromJson(Map<String, dynamic> json) => _$GuardianInfoFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'welcome_message') final  String? welcomeMessage;

/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuardianInfoCopyWith<_GuardianInfo> get copyWith => __$GuardianInfoCopyWithImpl<_GuardianInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuardianInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuardianInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photoUrl,welcomeMessage);

@override
String toString() {
  return 'GuardianInfo(id: $id, name: $name, photoUrl: $photoUrl, welcomeMessage: $welcomeMessage)';
}


}

/// @nodoc
abstract mixin class _$GuardianInfoCopyWith<$Res> implements $GuardianInfoCopyWith<$Res> {
  factory _$GuardianInfoCopyWith(_GuardianInfo value, $Res Function(_GuardianInfo) _then) = __$GuardianInfoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'welcome_message') String? welcomeMessage
});




}
/// @nodoc
class __$GuardianInfoCopyWithImpl<$Res>
    implements _$GuardianInfoCopyWith<$Res> {
  __$GuardianInfoCopyWithImpl(this._self, this._then);

  final _GuardianInfo _self;
  final $Res Function(_GuardianInfo) _then;

/// Create a copy of GuardianInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photoUrl = freezed,Object? welcomeMessage = freezed,}) {
  return _then(_GuardianInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,welcomeMessage: freezed == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FinancialSummary {

@JsonKey(name: 'total_required_usd') double get totalRequiredUsd;@JsonKey(name: 'total_paid_usd') double get totalPaidUsd;@JsonKey(name: 'total_remaining_usd') double get totalRemainingUsd;@JsonKey(name: 'payment_percentage') double get paymentPercentage;
/// Create a copy of FinancialSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialSummaryCopyWith<FinancialSummary> get copyWith => _$FinancialSummaryCopyWithImpl<FinancialSummary>(this as FinancialSummary, _$identity);

  /// Serializes this FinancialSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialSummary&&(identical(other.totalRequiredUsd, totalRequiredUsd) || other.totalRequiredUsd == totalRequiredUsd)&&(identical(other.totalPaidUsd, totalPaidUsd) || other.totalPaidUsd == totalPaidUsd)&&(identical(other.totalRemainingUsd, totalRemainingUsd) || other.totalRemainingUsd == totalRemainingUsd)&&(identical(other.paymentPercentage, paymentPercentage) || other.paymentPercentage == paymentPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequiredUsd,totalPaidUsd,totalRemainingUsd,paymentPercentage);

@override
String toString() {
  return 'FinancialSummary(totalRequiredUsd: $totalRequiredUsd, totalPaidUsd: $totalPaidUsd, totalRemainingUsd: $totalRemainingUsd, paymentPercentage: $paymentPercentage)';
}


}

/// @nodoc
abstract mixin class $FinancialSummaryCopyWith<$Res>  {
  factory $FinancialSummaryCopyWith(FinancialSummary value, $Res Function(FinancialSummary) _then) = _$FinancialSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_required_usd') double totalRequiredUsd,@JsonKey(name: 'total_paid_usd') double totalPaidUsd,@JsonKey(name: 'total_remaining_usd') double totalRemainingUsd,@JsonKey(name: 'payment_percentage') double paymentPercentage
});




}
/// @nodoc
class _$FinancialSummaryCopyWithImpl<$Res>
    implements $FinancialSummaryCopyWith<$Res> {
  _$FinancialSummaryCopyWithImpl(this._self, this._then);

  final FinancialSummary _self;
  final $Res Function(FinancialSummary) _then;

/// Create a copy of FinancialSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRequiredUsd = null,Object? totalPaidUsd = null,Object? totalRemainingUsd = null,Object? paymentPercentage = null,}) {
  return _then(_self.copyWith(
totalRequiredUsd: null == totalRequiredUsd ? _self.totalRequiredUsd : totalRequiredUsd // ignore: cast_nullable_to_non_nullable
as double,totalPaidUsd: null == totalPaidUsd ? _self.totalPaidUsd : totalPaidUsd // ignore: cast_nullable_to_non_nullable
as double,totalRemainingUsd: null == totalRemainingUsd ? _self.totalRemainingUsd : totalRemainingUsd // ignore: cast_nullable_to_non_nullable
as double,paymentPercentage: null == paymentPercentage ? _self.paymentPercentage : paymentPercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialSummary].
extension FinancialSummaryPatterns on FinancialSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialSummary value)  $default,){
final _that = this;
switch (_that) {
case _FinancialSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialSummary value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_required_usd')  double totalRequiredUsd, @JsonKey(name: 'total_paid_usd')  double totalPaidUsd, @JsonKey(name: 'total_remaining_usd')  double totalRemainingUsd, @JsonKey(name: 'payment_percentage')  double paymentPercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialSummary() when $default != null:
return $default(_that.totalRequiredUsd,_that.totalPaidUsd,_that.totalRemainingUsd,_that.paymentPercentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_required_usd')  double totalRequiredUsd, @JsonKey(name: 'total_paid_usd')  double totalPaidUsd, @JsonKey(name: 'total_remaining_usd')  double totalRemainingUsd, @JsonKey(name: 'payment_percentage')  double paymentPercentage)  $default,) {final _that = this;
switch (_that) {
case _FinancialSummary():
return $default(_that.totalRequiredUsd,_that.totalPaidUsd,_that.totalRemainingUsd,_that.paymentPercentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_required_usd')  double totalRequiredUsd, @JsonKey(name: 'total_paid_usd')  double totalPaidUsd, @JsonKey(name: 'total_remaining_usd')  double totalRemainingUsd, @JsonKey(name: 'payment_percentage')  double paymentPercentage)?  $default,) {final _that = this;
switch (_that) {
case _FinancialSummary() when $default != null:
return $default(_that.totalRequiredUsd,_that.totalPaidUsd,_that.totalRemainingUsd,_that.paymentPercentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialSummary implements FinancialSummary {
  const _FinancialSummary({@JsonKey(name: 'total_required_usd') required this.totalRequiredUsd, @JsonKey(name: 'total_paid_usd') required this.totalPaidUsd, @JsonKey(name: 'total_remaining_usd') required this.totalRemainingUsd, @JsonKey(name: 'payment_percentage') required this.paymentPercentage});
  factory _FinancialSummary.fromJson(Map<String, dynamic> json) => _$FinancialSummaryFromJson(json);

@override@JsonKey(name: 'total_required_usd') final  double totalRequiredUsd;
@override@JsonKey(name: 'total_paid_usd') final  double totalPaidUsd;
@override@JsonKey(name: 'total_remaining_usd') final  double totalRemainingUsd;
@override@JsonKey(name: 'payment_percentage') final  double paymentPercentage;

/// Create a copy of FinancialSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialSummaryCopyWith<_FinancialSummary> get copyWith => __$FinancialSummaryCopyWithImpl<_FinancialSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialSummary&&(identical(other.totalRequiredUsd, totalRequiredUsd) || other.totalRequiredUsd == totalRequiredUsd)&&(identical(other.totalPaidUsd, totalPaidUsd) || other.totalPaidUsd == totalPaidUsd)&&(identical(other.totalRemainingUsd, totalRemainingUsd) || other.totalRemainingUsd == totalRemainingUsd)&&(identical(other.paymentPercentage, paymentPercentage) || other.paymentPercentage == paymentPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRequiredUsd,totalPaidUsd,totalRemainingUsd,paymentPercentage);

@override
String toString() {
  return 'FinancialSummary(totalRequiredUsd: $totalRequiredUsd, totalPaidUsd: $totalPaidUsd, totalRemainingUsd: $totalRemainingUsd, paymentPercentage: $paymentPercentage)';
}


}

/// @nodoc
abstract mixin class _$FinancialSummaryCopyWith<$Res> implements $FinancialSummaryCopyWith<$Res> {
  factory _$FinancialSummaryCopyWith(_FinancialSummary value, $Res Function(_FinancialSummary) _then) = __$FinancialSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_required_usd') double totalRequiredUsd,@JsonKey(name: 'total_paid_usd') double totalPaidUsd,@JsonKey(name: 'total_remaining_usd') double totalRemainingUsd,@JsonKey(name: 'payment_percentage') double paymentPercentage
});




}
/// @nodoc
class __$FinancialSummaryCopyWithImpl<$Res>
    implements _$FinancialSummaryCopyWith<$Res> {
  __$FinancialSummaryCopyWithImpl(this._self, this._then);

  final _FinancialSummary _self;
  final $Res Function(_FinancialSummary) _then;

/// Create a copy of FinancialSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRequiredUsd = null,Object? totalPaidUsd = null,Object? totalRemainingUsd = null,Object? paymentPercentage = null,}) {
  return _then(_FinancialSummary(
totalRequiredUsd: null == totalRequiredUsd ? _self.totalRequiredUsd : totalRequiredUsd // ignore: cast_nullable_to_non_nullable
as double,totalPaidUsd: null == totalPaidUsd ? _self.totalPaidUsd : totalPaidUsd // ignore: cast_nullable_to_non_nullable
as double,totalRemainingUsd: null == totalRemainingUsd ? _self.totalRemainingUsd : totalRemainingUsd // ignore: cast_nullable_to_non_nullable
as double,paymentPercentage: null == paymentPercentage ? _self.paymentPercentage : paymentPercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Child {

 int get id;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'photo_url') String? get photoUrl; String get batch;
/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildCopyWith<Child> get copyWith => _$ChildCopyWithImpl<Child>(this as Child, _$identity);

  /// Serializes this Child to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Child&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.batch, batch) || other.batch == batch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,photoUrl,batch);

@override
String toString() {
  return 'Child(id: $id, fullName: $fullName, photoUrl: $photoUrl, batch: $batch)';
}


}

/// @nodoc
abstract mixin class $ChildCopyWith<$Res>  {
  factory $ChildCopyWith(Child value, $Res Function(Child) _then) = _$ChildCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'photo_url') String? photoUrl, String batch
});




}
/// @nodoc
class _$ChildCopyWithImpl<$Res>
    implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._self, this._then);

  final Child _self;
  final $Res Function(Child) _then;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? photoUrl = freezed,Object? batch = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,batch: null == batch ? _self.batch : batch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Child].
extension ChildPatterns on Child {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Child value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Child() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Child value)  $default,){
final _that = this;
switch (_that) {
case _Child():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Child value)?  $default,){
final _that = this;
switch (_that) {
case _Child() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'photo_url')  String? photoUrl,  String batch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Child() when $default != null:
return $default(_that.id,_that.fullName,_that.photoUrl,_that.batch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'photo_url')  String? photoUrl,  String batch)  $default,) {final _that = this;
switch (_that) {
case _Child():
return $default(_that.id,_that.fullName,_that.photoUrl,_that.batch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'photo_url')  String? photoUrl,  String batch)?  $default,) {final _that = this;
switch (_that) {
case _Child() when $default != null:
return $default(_that.id,_that.fullName,_that.photoUrl,_that.batch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Child implements Child {
  const _Child({required this.id, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'photo_url') this.photoUrl, required this.batch});
  factory _Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);

@override final  int id;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override final  String batch;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildCopyWith<_Child> get copyWith => __$ChildCopyWithImpl<_Child>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Child&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.batch, batch) || other.batch == batch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,photoUrl,batch);

@override
String toString() {
  return 'Child(id: $id, fullName: $fullName, photoUrl: $photoUrl, batch: $batch)';
}


}

/// @nodoc
abstract mixin class _$ChildCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$ChildCopyWith(_Child value, $Res Function(_Child) _then) = __$ChildCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'photo_url') String? photoUrl, String batch
});




}
/// @nodoc
class __$ChildCopyWithImpl<$Res>
    implements _$ChildCopyWith<$Res> {
  __$ChildCopyWithImpl(this._self, this._then);

  final _Child _self;
  final $Res Function(_Child) _then;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? photoUrl = freezed,Object? batch = null,}) {
  return _then(_Child(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,batch: null == batch ? _self.batch : batch // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
