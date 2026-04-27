// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationListResponse {

 bool get status; String get message; List<NotificationModel> get data; PaginationLinks? get links; PaginationMeta? get meta;
/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationListResponseCopyWith<NotificationListResponse> get copyWith => _$NotificationListResponseCopyWithImpl<NotificationListResponse>(this as NotificationListResponse, _$identity);

  /// Serializes this NotificationListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationListResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.links, links) || other.links == links)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data),links,meta);

@override
String toString() {
  return 'NotificationListResponse(status: $status, message: $message, data: $data, links: $links, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $NotificationListResponseCopyWith<$Res>  {
  factory $NotificationListResponseCopyWith(NotificationListResponse value, $Res Function(NotificationListResponse) _then) = _$NotificationListResponseCopyWithImpl;
@useResult
$Res call({
 bool status, String message, List<NotificationModel> data, PaginationLinks? links, PaginationMeta? meta
});


$PaginationLinksCopyWith<$Res>? get links;$PaginationMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$NotificationListResponseCopyWithImpl<$Res>
    implements $NotificationListResponseCopyWith<$Res> {
  _$NotificationListResponseCopyWithImpl(this._self, this._then);

  final NotificationListResponse _self;
  final $Res Function(NotificationListResponse) _then;

/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = null,Object? links = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationModel>,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta?,
  ));
}
/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $PaginationLinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PaginationMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationListResponse].
extension NotificationListResponsePatterns on NotificationListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationListResponse value)  $default,){
final _that = this;
switch (_that) {
case _NotificationListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  List<NotificationModel> data,  PaginationLinks? links,  PaginationMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationListResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.links,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  List<NotificationModel> data,  PaginationLinks? links,  PaginationMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _NotificationListResponse():
return $default(_that.status,_that.message,_that.data,_that.links,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  List<NotificationModel> data,  PaginationLinks? links,  PaginationMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _NotificationListResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.links,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationListResponse implements NotificationListResponse {
  const _NotificationListResponse({this.status = false, this.message = "", final  List<NotificationModel> data = const [], this.links, this.meta}): _data = data;
  factory _NotificationListResponse.fromJson(Map<String, dynamic> json) => _$NotificationListResponseFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;
 final  List<NotificationModel> _data;
@override@JsonKey() List<NotificationModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  PaginationLinks? links;
@override final  PaginationMeta? meta;

/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationListResponseCopyWith<_NotificationListResponse> get copyWith => __$NotificationListResponseCopyWithImpl<_NotificationListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationListResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.links, links) || other.links == links)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data),links,meta);

@override
String toString() {
  return 'NotificationListResponse(status: $status, message: $message, data: $data, links: $links, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$NotificationListResponseCopyWith<$Res> implements $NotificationListResponseCopyWith<$Res> {
  factory _$NotificationListResponseCopyWith(_NotificationListResponse value, $Res Function(_NotificationListResponse) _then) = __$NotificationListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, List<NotificationModel> data, PaginationLinks? links, PaginationMeta? meta
});


@override $PaginationLinksCopyWith<$Res>? get links;@override $PaginationMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$NotificationListResponseCopyWithImpl<$Res>
    implements _$NotificationListResponseCopyWith<$Res> {
  __$NotificationListResponseCopyWithImpl(this._self, this._then);

  final _NotificationListResponse _self;
  final $Res Function(_NotificationListResponse) _then;

/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = null,Object? links = freezed,Object? meta = freezed,}) {
  return _then(_NotificationListResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationModel>,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta?,
  ));
}

/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $PaginationLinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}/// Create a copy of NotificationListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PaginationMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$NotificationModel {

@JsonKey(name: 'reception_id') int get receptionId;@JsonKey(name: 'notification_id') int get notificationId; String get title; String get body; Sender? get sender; List<AttachmentModel> get attachments;@JsonKey(name: 'is_read') bool get isRead;@JsonKey(name: 'read_at') String? get readAt;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'created_at_human') String get createdAtHuman;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.receptionId, receptionId) || other.receptionId == receptionId)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.sender, sender) || other.sender == sender)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdAtHuman, createdAtHuman) || other.createdAtHuman == createdAtHuman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receptionId,notificationId,title,body,sender,const DeepCollectionEquality().hash(attachments),isRead,readAt,createdAt,createdAtHuman);

@override
String toString() {
  return 'NotificationModel(receptionId: $receptionId, notificationId: $notificationId, title: $title, body: $body, sender: $sender, attachments: $attachments, isRead: $isRead, readAt: $readAt, createdAt: $createdAt, createdAtHuman: $createdAtHuman)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'reception_id') int receptionId,@JsonKey(name: 'notification_id') int notificationId, String title, String body, Sender? sender, List<AttachmentModel> attachments,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'read_at') String? readAt,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'created_at_human') String createdAtHuman
});


$SenderCopyWith<$Res>? get sender;

}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receptionId = null,Object? notificationId = null,Object? title = null,Object? body = null,Object? sender = freezed,Object? attachments = null,Object? isRead = null,Object? readAt = freezed,Object? createdAt = null,Object? createdAtHuman = null,}) {
  return _then(_self.copyWith(
receptionId: null == receptionId ? _self.receptionId : receptionId // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as Sender?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentModel>,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,createdAtHuman: null == createdAtHuman ? _self.createdAtHuman : createdAtHuman // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SenderCopyWith<$Res>? get sender {
    if (_self.sender == null) {
    return null;
  }

  return $SenderCopyWith<$Res>(_self.sender!, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'reception_id')  int receptionId, @JsonKey(name: 'notification_id')  int notificationId,  String title,  String body,  Sender? sender,  List<AttachmentModel> attachments, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'read_at')  String? readAt, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'created_at_human')  String createdAtHuman)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.receptionId,_that.notificationId,_that.title,_that.body,_that.sender,_that.attachments,_that.isRead,_that.readAt,_that.createdAt,_that.createdAtHuman);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'reception_id')  int receptionId, @JsonKey(name: 'notification_id')  int notificationId,  String title,  String body,  Sender? sender,  List<AttachmentModel> attachments, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'read_at')  String? readAt, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'created_at_human')  String createdAtHuman)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
return $default(_that.receptionId,_that.notificationId,_that.title,_that.body,_that.sender,_that.attachments,_that.isRead,_that.readAt,_that.createdAt,_that.createdAtHuman);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'reception_id')  int receptionId, @JsonKey(name: 'notification_id')  int notificationId,  String title,  String body,  Sender? sender,  List<AttachmentModel> attachments, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'read_at')  String? readAt, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'created_at_human')  String createdAtHuman)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.receptionId,_that.notificationId,_that.title,_that.body,_that.sender,_that.attachments,_that.isRead,_that.readAt,_that.createdAt,_that.createdAtHuman);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationModel implements NotificationModel {
  const _NotificationModel({@JsonKey(name: 'reception_id') this.receptionId = 0, @JsonKey(name: 'notification_id') this.notificationId = 0, this.title = "", this.body = "", this.sender, final  List<AttachmentModel> attachments = const [], @JsonKey(name: 'is_read') this.isRead = false, @JsonKey(name: 'read_at') this.readAt, @JsonKey(name: 'created_at') this.createdAt = "", @JsonKey(name: 'created_at_human') this.createdAtHuman = ""}): _attachments = attachments;
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override@JsonKey(name: 'reception_id') final  int receptionId;
@override@JsonKey(name: 'notification_id') final  int notificationId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String body;
@override final  Sender? sender;
 final  List<AttachmentModel> _attachments;
@override@JsonKey() List<AttachmentModel> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override@JsonKey(name: 'is_read') final  bool isRead;
@override@JsonKey(name: 'read_at') final  String? readAt;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'created_at_human') final  String createdAtHuman;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.receptionId, receptionId) || other.receptionId == receptionId)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.sender, sender) || other.sender == sender)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdAtHuman, createdAtHuman) || other.createdAtHuman == createdAtHuman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receptionId,notificationId,title,body,sender,const DeepCollectionEquality().hash(_attachments),isRead,readAt,createdAt,createdAtHuman);

@override
String toString() {
  return 'NotificationModel(receptionId: $receptionId, notificationId: $notificationId, title: $title, body: $body, sender: $sender, attachments: $attachments, isRead: $isRead, readAt: $readAt, createdAt: $createdAt, createdAtHuman: $createdAtHuman)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'reception_id') int receptionId,@JsonKey(name: 'notification_id') int notificationId, String title, String body, Sender? sender, List<AttachmentModel> attachments,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'read_at') String? readAt,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'created_at_human') String createdAtHuman
});


@override $SenderCopyWith<$Res>? get sender;

}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receptionId = null,Object? notificationId = null,Object? title = null,Object? body = null,Object? sender = freezed,Object? attachments = null,Object? isRead = null,Object? readAt = freezed,Object? createdAt = null,Object? createdAtHuman = null,}) {
  return _then(_NotificationModel(
receptionId: null == receptionId ? _self.receptionId : receptionId // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as Sender?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentModel>,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,createdAtHuman: null == createdAtHuman ? _self.createdAtHuman : createdAtHuman // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SenderCopyWith<$Res>? get sender {
    if (_self.sender == null) {
    return null;
  }

  return $SenderCopyWith<$Res>(_self.sender!, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// @nodoc
mixin _$Sender {

 int? get id; String? get type;@JsonKey(name: 'display_name') String? get displayName;
/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SenderCopyWith<Sender> get copyWith => _$SenderCopyWithImpl<Sender>(this as Sender, _$identity);

  /// Serializes this Sender to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sender&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,displayName);

@override
String toString() {
  return 'Sender(id: $id, type: $type, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $SenderCopyWith<$Res>  {
  factory $SenderCopyWith(Sender value, $Res Function(Sender) _then) = _$SenderCopyWithImpl;
@useResult
$Res call({
 int? id, String? type,@JsonKey(name: 'display_name') String? displayName
});




}
/// @nodoc
class _$SenderCopyWithImpl<$Res>
    implements $SenderCopyWith<$Res> {
  _$SenderCopyWithImpl(this._self, this._then);

  final Sender _self;
  final $Res Function(Sender) _then;

/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? displayName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sender].
extension SenderPatterns on Sender {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sender value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sender() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sender value)  $default,){
final _that = this;
switch (_that) {
case _Sender():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sender value)?  $default,){
final _that = this;
switch (_that) {
case _Sender() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type, @JsonKey(name: 'display_name')  String? displayName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sender() when $default != null:
return $default(_that.id,_that.type,_that.displayName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type, @JsonKey(name: 'display_name')  String? displayName)  $default,) {final _that = this;
switch (_that) {
case _Sender():
return $default(_that.id,_that.type,_that.displayName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type, @JsonKey(name: 'display_name')  String? displayName)?  $default,) {final _that = this;
switch (_that) {
case _Sender() when $default != null:
return $default(_that.id,_that.type,_that.displayName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sender implements Sender {
  const _Sender({this.id, this.type, @JsonKey(name: 'display_name') this.displayName});
  factory _Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);

@override final  int? id;
@override final  String? type;
@override@JsonKey(name: 'display_name') final  String? displayName;

/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SenderCopyWith<_Sender> get copyWith => __$SenderCopyWithImpl<_Sender>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SenderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sender&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,displayName);

@override
String toString() {
  return 'Sender(id: $id, type: $type, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class _$SenderCopyWith<$Res> implements $SenderCopyWith<$Res> {
  factory _$SenderCopyWith(_Sender value, $Res Function(_Sender) _then) = __$SenderCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type,@JsonKey(name: 'display_name') String? displayName
});




}
/// @nodoc
class __$SenderCopyWithImpl<$Res>
    implements _$SenderCopyWith<$Res> {
  __$SenderCopyWithImpl(this._self, this._then);

  final _Sender _self;
  final $Res Function(_Sender) _then;

/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? displayName = freezed,}) {
  return _then(_Sender(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AttachmentModel {

 int get id;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'name') String? get name; String get url;@JsonKey(name: 'mime_type') String get mimeType;@JsonKey(name: 'size_formatted') String get sizeFormatted;@JsonKey(name: 'is_image') bool get isImage;
/// Create a copy of AttachmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentModelCopyWith<AttachmentModel> get copyWith => _$AttachmentModelCopyWithImpl<AttachmentModel>(this as AttachmentModel, _$identity);

  /// Serializes this AttachmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttachmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.sizeFormatted, sizeFormatted) || other.sizeFormatted == sizeFormatted)&&(identical(other.isImage, isImage) || other.isImage == isImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,name,url,mimeType,sizeFormatted,isImage);

@override
String toString() {
  return 'AttachmentModel(id: $id, fileName: $fileName, name: $name, url: $url, mimeType: $mimeType, sizeFormatted: $sizeFormatted, isImage: $isImage)';
}


}

/// @nodoc
abstract mixin class $AttachmentModelCopyWith<$Res>  {
  factory $AttachmentModelCopyWith(AttachmentModel value, $Res Function(AttachmentModel) _then) = _$AttachmentModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'name') String? name, String url,@JsonKey(name: 'mime_type') String mimeType,@JsonKey(name: 'size_formatted') String sizeFormatted,@JsonKey(name: 'is_image') bool isImage
});




}
/// @nodoc
class _$AttachmentModelCopyWithImpl<$Res>
    implements $AttachmentModelCopyWith<$Res> {
  _$AttachmentModelCopyWithImpl(this._self, this._then);

  final AttachmentModel _self;
  final $Res Function(AttachmentModel) _then;

/// Create a copy of AttachmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fileName = freezed,Object? name = freezed,Object? url = null,Object? mimeType = null,Object? sizeFormatted = null,Object? isImage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,sizeFormatted: null == sizeFormatted ? _self.sizeFormatted : sizeFormatted // ignore: cast_nullable_to_non_nullable
as String,isImage: null == isImage ? _self.isImage : isImage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AttachmentModel].
extension AttachmentModelPatterns on AttachmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttachmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttachmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttachmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AttachmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttachmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttachmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'name')  String? name,  String url, @JsonKey(name: 'mime_type')  String mimeType, @JsonKey(name: 'size_formatted')  String sizeFormatted, @JsonKey(name: 'is_image')  bool isImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttachmentModel() when $default != null:
return $default(_that.id,_that.fileName,_that.name,_that.url,_that.mimeType,_that.sizeFormatted,_that.isImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'name')  String? name,  String url, @JsonKey(name: 'mime_type')  String mimeType, @JsonKey(name: 'size_formatted')  String sizeFormatted, @JsonKey(name: 'is_image')  bool isImage)  $default,) {final _that = this;
switch (_that) {
case _AttachmentModel():
return $default(_that.id,_that.fileName,_that.name,_that.url,_that.mimeType,_that.sizeFormatted,_that.isImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'name')  String? name,  String url, @JsonKey(name: 'mime_type')  String mimeType, @JsonKey(name: 'size_formatted')  String sizeFormatted, @JsonKey(name: 'is_image')  bool isImage)?  $default,) {final _that = this;
switch (_that) {
case _AttachmentModel() when $default != null:
return $default(_that.id,_that.fileName,_that.name,_that.url,_that.mimeType,_that.sizeFormatted,_that.isImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttachmentModel implements AttachmentModel {
  const _AttachmentModel({this.id = 0, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'name') this.name, this.url = "", @JsonKey(name: 'mime_type') this.mimeType = "", @JsonKey(name: 'size_formatted') this.sizeFormatted = "", @JsonKey(name: 'is_image') this.isImage = false});
  factory _AttachmentModel.fromJson(Map<String, dynamic> json) => _$AttachmentModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey() final  String url;
@override@JsonKey(name: 'mime_type') final  String mimeType;
@override@JsonKey(name: 'size_formatted') final  String sizeFormatted;
@override@JsonKey(name: 'is_image') final  bool isImage;

/// Create a copy of AttachmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentModelCopyWith<_AttachmentModel> get copyWith => __$AttachmentModelCopyWithImpl<_AttachmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttachmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.sizeFormatted, sizeFormatted) || other.sizeFormatted == sizeFormatted)&&(identical(other.isImage, isImage) || other.isImage == isImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,name,url,mimeType,sizeFormatted,isImage);

@override
String toString() {
  return 'AttachmentModel(id: $id, fileName: $fileName, name: $name, url: $url, mimeType: $mimeType, sizeFormatted: $sizeFormatted, isImage: $isImage)';
}


}

/// @nodoc
abstract mixin class _$AttachmentModelCopyWith<$Res> implements $AttachmentModelCopyWith<$Res> {
  factory _$AttachmentModelCopyWith(_AttachmentModel value, $Res Function(_AttachmentModel) _then) = __$AttachmentModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'name') String? name, String url,@JsonKey(name: 'mime_type') String mimeType,@JsonKey(name: 'size_formatted') String sizeFormatted,@JsonKey(name: 'is_image') bool isImage
});




}
/// @nodoc
class __$AttachmentModelCopyWithImpl<$Res>
    implements _$AttachmentModelCopyWith<$Res> {
  __$AttachmentModelCopyWithImpl(this._self, this._then);

  final _AttachmentModel _self;
  final $Res Function(_AttachmentModel) _then;

/// Create a copy of AttachmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fileName = freezed,Object? name = freezed,Object? url = null,Object? mimeType = null,Object? sizeFormatted = null,Object? isImage = null,}) {
  return _then(_AttachmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,sizeFormatted: null == sizeFormatted ? _self.sizeFormatted : sizeFormatted // ignore: cast_nullable_to_non_nullable
as String,isImage: null == isImage ? _self.isImage : isImage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PaginationLinks {

 String? get first; String? get last; String? get prev; String? get next;
/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<PaginationLinks> get copyWith => _$PaginationLinksCopyWithImpl<PaginationLinks>(this as PaginationLinks, _$identity);

  /// Serializes this PaginationLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationLinks&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.prev, prev) || other.prev == prev)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,prev,next);

@override
String toString() {
  return 'PaginationLinks(first: $first, last: $last, prev: $prev, next: $next)';
}


}

/// @nodoc
abstract mixin class $PaginationLinksCopyWith<$Res>  {
  factory $PaginationLinksCopyWith(PaginationLinks value, $Res Function(PaginationLinks) _then) = _$PaginationLinksCopyWithImpl;
@useResult
$Res call({
 String? first, String? last, String? prev, String? next
});




}
/// @nodoc
class _$PaginationLinksCopyWithImpl<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._self, this._then);

  final PaginationLinks _self;
  final $Res Function(PaginationLinks) _then;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? first = freezed,Object? last = freezed,Object? prev = freezed,Object? next = freezed,}) {
  return _then(_self.copyWith(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationLinks].
extension PaginationLinksPatterns on PaginationLinks {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationLinks value)  $default,){
final _that = this;
switch (_that) {
case _PaginationLinks():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationLinks value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? first,  String? last,  String? prev,  String? next)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? first,  String? last,  String? prev,  String? next)  $default,) {final _that = this;
switch (_that) {
case _PaginationLinks():
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? first,  String? last,  String? prev,  String? next)?  $default,) {final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationLinks implements PaginationLinks {
  const _PaginationLinks({this.first, this.last, this.prev, this.next});
  factory _PaginationLinks.fromJson(Map<String, dynamic> json) => _$PaginationLinksFromJson(json);

@override final  String? first;
@override final  String? last;
@override final  String? prev;
@override final  String? next;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationLinksCopyWith<_PaginationLinks> get copyWith => __$PaginationLinksCopyWithImpl<_PaginationLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationLinks&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.prev, prev) || other.prev == prev)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,prev,next);

@override
String toString() {
  return 'PaginationLinks(first: $first, last: $last, prev: $prev, next: $next)';
}


}

/// @nodoc
abstract mixin class _$PaginationLinksCopyWith<$Res> implements $PaginationLinksCopyWith<$Res> {
  factory _$PaginationLinksCopyWith(_PaginationLinks value, $Res Function(_PaginationLinks) _then) = __$PaginationLinksCopyWithImpl;
@override @useResult
$Res call({
 String? first, String? last, String? prev, String? next
});




}
/// @nodoc
class __$PaginationLinksCopyWithImpl<$Res>
    implements _$PaginationLinksCopyWith<$Res> {
  __$PaginationLinksCopyWithImpl(this._self, this._then);

  final _PaginationLinks _self;
  final $Res Function(_PaginationLinks) _then;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? first = freezed,Object? last = freezed,Object? prev = freezed,Object? next = freezed,}) {
  return _then(_PaginationLinks(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaginationMeta {

@JsonKey(name: 'current_page') int get currentPage; int? get from;@JsonKey(name: 'last_page') int get lastPage;@JsonKey(name: 'per_page') int get perPage; int? get to; int get total;
/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<PaginationMeta> get copyWith => _$PaginationMetaCopyWithImpl<PaginationMeta>(this as PaginationMeta, _$identity);

  /// Serializes this PaginationMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,perPage,to,total);

@override
String toString() {
  return 'PaginationMeta(currentPage: $currentPage, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $PaginationMetaCopyWith<$Res>  {
  factory $PaginationMetaCopyWith(PaginationMeta value, $Res Function(PaginationMeta) _then) = _$PaginationMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage, int? from,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int perPage, int? to, int total
});




}
/// @nodoc
class _$PaginationMetaCopyWithImpl<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._self, this._then);

  final PaginationMeta _self;
  final $Res Function(PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? from = freezed,Object? lastPage = null,Object? perPage = null,Object? to = freezed,Object? total = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationMeta].
extension PaginationMetaPatterns on PaginationMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationMeta value)  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationMeta value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage,  int? from, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int perPage,  int? to,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage,  int? from, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int perPage,  int? to,  int total)  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta():
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int currentPage,  int? from, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int perPage,  int? to,  int total)?  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationMeta implements PaginationMeta {
  const _PaginationMeta({@JsonKey(name: 'current_page') this.currentPage = 1, this.from, @JsonKey(name: 'last_page') this.lastPage = 1, @JsonKey(name: 'per_page') this.perPage = 10, this.to, this.total = 0});
  factory _PaginationMeta.fromJson(Map<String, dynamic> json) => _$PaginationMetaFromJson(json);

@override@JsonKey(name: 'current_page') final  int currentPage;
@override final  int? from;
@override@JsonKey(name: 'last_page') final  int lastPage;
@override@JsonKey(name: 'per_page') final  int perPage;
@override final  int? to;
@override@JsonKey() final  int total;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationMetaCopyWith<_PaginationMeta> get copyWith => __$PaginationMetaCopyWithImpl<_PaginationMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,perPage,to,total);

@override
String toString() {
  return 'PaginationMeta(currentPage: $currentPage, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PaginationMetaCopyWith<$Res> implements $PaginationMetaCopyWith<$Res> {
  factory _$PaginationMetaCopyWith(_PaginationMeta value, $Res Function(_PaginationMeta) _then) = __$PaginationMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage, int? from,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int perPage, int? to, int total
});




}
/// @nodoc
class __$PaginationMetaCopyWithImpl<$Res>
    implements _$PaginationMetaCopyWith<$Res> {
  __$PaginationMetaCopyWithImpl(this._self, this._then);

  final _PaginationMeta _self;
  final $Res Function(_PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? from = freezed,Object? lastPage = null,Object? perPage = null,Object? to = freezed,Object? total = null,}) {
  return _then(_PaginationMeta(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$NotificationDetailResponse {

 bool get status; String get message; NotificationDetailData? get data;
/// Create a copy of NotificationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDetailResponseCopyWith<NotificationDetailResponse> get copyWith => _$NotificationDetailResponseCopyWithImpl<NotificationDetailResponse>(this as NotificationDetailResponse, _$identity);

  /// Serializes this NotificationDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDetailResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'NotificationDetailResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $NotificationDetailResponseCopyWith<$Res>  {
  factory $NotificationDetailResponseCopyWith(NotificationDetailResponse value, $Res Function(NotificationDetailResponse) _then) = _$NotificationDetailResponseCopyWithImpl;
@useResult
$Res call({
 bool status, String message, NotificationDetailData? data
});


$NotificationDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$NotificationDetailResponseCopyWithImpl<$Res>
    implements $NotificationDetailResponseCopyWith<$Res> {
  _$NotificationDetailResponseCopyWithImpl(this._self, this._then);

  final NotificationDetailResponse _self;
  final $Res Function(NotificationDetailResponse) _then;

/// Create a copy of NotificationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationDetailData?,
  ));
}
/// Create a copy of NotificationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationDetailResponse].
extension NotificationDetailResponsePatterns on NotificationDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  NotificationDetailData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationDetailResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  NotificationDetailData? data)  $default,) {final _that = this;
switch (_that) {
case _NotificationDetailResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  NotificationDetailData? data)?  $default,) {final _that = this;
switch (_that) {
case _NotificationDetailResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDetailResponse implements NotificationDetailResponse {
  const _NotificationDetailResponse({this.status = false, this.message = "", this.data});
  factory _NotificationDetailResponse.fromJson(Map<String, dynamic> json) => _$NotificationDetailResponseFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;
@override final  NotificationDetailData? data;

/// Create a copy of NotificationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDetailResponseCopyWith<_NotificationDetailResponse> get copyWith => __$NotificationDetailResponseCopyWithImpl<_NotificationDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDetailResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'NotificationDetailResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$NotificationDetailResponseCopyWith<$Res> implements $NotificationDetailResponseCopyWith<$Res> {
  factory _$NotificationDetailResponseCopyWith(_NotificationDetailResponse value, $Res Function(_NotificationDetailResponse) _then) = __$NotificationDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, NotificationDetailData? data
});


@override $NotificationDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$NotificationDetailResponseCopyWithImpl<$Res>
    implements _$NotificationDetailResponseCopyWith<$Res> {
  __$NotificationDetailResponseCopyWithImpl(this._self, this._then);

  final _NotificationDetailResponse _self;
  final $Res Function(_NotificationDetailResponse) _then;

/// Create a copy of NotificationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_NotificationDetailResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationDetailData?,
  ));
}

/// Create a copy of NotificationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $NotificationDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NotificationDetailData {

 RecipientStatus get recipient; NotificationModel get notification;
/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDetailDataCopyWith<NotificationDetailData> get copyWith => _$NotificationDetailDataCopyWithImpl<NotificationDetailData>(this as NotificationDetailData, _$identity);

  /// Serializes this NotificationDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDetailData&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.notification, notification) || other.notification == notification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipient,notification);

@override
String toString() {
  return 'NotificationDetailData(recipient: $recipient, notification: $notification)';
}


}

/// @nodoc
abstract mixin class $NotificationDetailDataCopyWith<$Res>  {
  factory $NotificationDetailDataCopyWith(NotificationDetailData value, $Res Function(NotificationDetailData) _then) = _$NotificationDetailDataCopyWithImpl;
@useResult
$Res call({
 RecipientStatus recipient, NotificationModel notification
});


$RecipientStatusCopyWith<$Res> get recipient;$NotificationModelCopyWith<$Res> get notification;

}
/// @nodoc
class _$NotificationDetailDataCopyWithImpl<$Res>
    implements $NotificationDetailDataCopyWith<$Res> {
  _$NotificationDetailDataCopyWithImpl(this._self, this._then);

  final NotificationDetailData _self;
  final $Res Function(NotificationDetailData) _then;

/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipient = null,Object? notification = null,}) {
  return _then(_self.copyWith(
recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as RecipientStatus,notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as NotificationModel,
  ));
}
/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipientStatusCopyWith<$Res> get recipient {
  
  return $RecipientStatusCopyWith<$Res>(_self.recipient, (value) {
    return _then(_self.copyWith(recipient: value));
  });
}/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<$Res> get notification {
  
  return $NotificationModelCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationDetailData].
extension NotificationDetailDataPatterns on NotificationDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDetailData value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipientStatus recipient,  NotificationModel notification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationDetailData() when $default != null:
return $default(_that.recipient,_that.notification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipientStatus recipient,  NotificationModel notification)  $default,) {final _that = this;
switch (_that) {
case _NotificationDetailData():
return $default(_that.recipient,_that.notification);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipientStatus recipient,  NotificationModel notification)?  $default,) {final _that = this;
switch (_that) {
case _NotificationDetailData() when $default != null:
return $default(_that.recipient,_that.notification);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDetailData implements NotificationDetailData {
  const _NotificationDetailData({required this.recipient, required this.notification});
  factory _NotificationDetailData.fromJson(Map<String, dynamic> json) => _$NotificationDetailDataFromJson(json);

@override final  RecipientStatus recipient;
@override final  NotificationModel notification;

/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDetailDataCopyWith<_NotificationDetailData> get copyWith => __$NotificationDetailDataCopyWithImpl<_NotificationDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDetailData&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.notification, notification) || other.notification == notification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipient,notification);

@override
String toString() {
  return 'NotificationDetailData(recipient: $recipient, notification: $notification)';
}


}

/// @nodoc
abstract mixin class _$NotificationDetailDataCopyWith<$Res> implements $NotificationDetailDataCopyWith<$Res> {
  factory _$NotificationDetailDataCopyWith(_NotificationDetailData value, $Res Function(_NotificationDetailData) _then) = __$NotificationDetailDataCopyWithImpl;
@override @useResult
$Res call({
 RecipientStatus recipient, NotificationModel notification
});


@override $RecipientStatusCopyWith<$Res> get recipient;@override $NotificationModelCopyWith<$Res> get notification;

}
/// @nodoc
class __$NotificationDetailDataCopyWithImpl<$Res>
    implements _$NotificationDetailDataCopyWith<$Res> {
  __$NotificationDetailDataCopyWithImpl(this._self, this._then);

  final _NotificationDetailData _self;
  final $Res Function(_NotificationDetailData) _then;

/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipient = null,Object? notification = null,}) {
  return _then(_NotificationDetailData(
recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as RecipientStatus,notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as NotificationModel,
  ));
}

/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipientStatusCopyWith<$Res> get recipient {
  
  return $RecipientStatusCopyWith<$Res>(_self.recipient, (value) {
    return _then(_self.copyWith(recipient: value));
  });
}/// Create a copy of NotificationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<$Res> get notification {
  
  return $NotificationModelCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}


/// @nodoc
mixin _$RecipientStatus {

 int get id;@JsonKey(name: 'notification_id') int get notificationId; String get status;@JsonKey(name: 'is_read') bool get isRead;
/// Create a copy of RecipientStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipientStatusCopyWith<RecipientStatus> get copyWith => _$RecipientStatusCopyWithImpl<RecipientStatus>(this as RecipientStatus, _$identity);

  /// Serializes this RecipientStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipientStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,notificationId,status,isRead);

@override
String toString() {
  return 'RecipientStatus(id: $id, notificationId: $notificationId, status: $status, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $RecipientStatusCopyWith<$Res>  {
  factory $RecipientStatusCopyWith(RecipientStatus value, $Res Function(RecipientStatus) _then) = _$RecipientStatusCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'notification_id') int notificationId, String status,@JsonKey(name: 'is_read') bool isRead
});




}
/// @nodoc
class _$RecipientStatusCopyWithImpl<$Res>
    implements $RecipientStatusCopyWith<$Res> {
  _$RecipientStatusCopyWithImpl(this._self, this._then);

  final RecipientStatus _self;
  final $Res Function(RecipientStatus) _then;

/// Create a copy of RecipientStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? notificationId = null,Object? status = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipientStatus].
extension RecipientStatusPatterns on RecipientStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipientStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipientStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipientStatus value)  $default,){
final _that = this;
switch (_that) {
case _RecipientStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipientStatus value)?  $default,){
final _that = this;
switch (_that) {
case _RecipientStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'notification_id')  int notificationId,  String status, @JsonKey(name: 'is_read')  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipientStatus() when $default != null:
return $default(_that.id,_that.notificationId,_that.status,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'notification_id')  int notificationId,  String status, @JsonKey(name: 'is_read')  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _RecipientStatus():
return $default(_that.id,_that.notificationId,_that.status,_that.isRead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'notification_id')  int notificationId,  String status, @JsonKey(name: 'is_read')  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _RecipientStatus() when $default != null:
return $default(_that.id,_that.notificationId,_that.status,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipientStatus implements RecipientStatus {
  const _RecipientStatus({this.id = 0, @JsonKey(name: 'notification_id') this.notificationId = 0, this.status = "", @JsonKey(name: 'is_read') this.isRead = false});
  factory _RecipientStatus.fromJson(Map<String, dynamic> json) => _$RecipientStatusFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey(name: 'notification_id') final  int notificationId;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'is_read') final  bool isRead;

/// Create a copy of RecipientStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipientStatusCopyWith<_RecipientStatus> get copyWith => __$RecipientStatusCopyWithImpl<_RecipientStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipientStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipientStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,notificationId,status,isRead);

@override
String toString() {
  return 'RecipientStatus(id: $id, notificationId: $notificationId, status: $status, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$RecipientStatusCopyWith<$Res> implements $RecipientStatusCopyWith<$Res> {
  factory _$RecipientStatusCopyWith(_RecipientStatus value, $Res Function(_RecipientStatus) _then) = __$RecipientStatusCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'notification_id') int notificationId, String status,@JsonKey(name: 'is_read') bool isRead
});




}
/// @nodoc
class __$RecipientStatusCopyWithImpl<$Res>
    implements _$RecipientStatusCopyWith<$Res> {
  __$RecipientStatusCopyWithImpl(this._self, this._then);

  final _RecipientStatus _self;
  final $Res Function(_RecipientStatus) _then;

/// Create a copy of RecipientStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? notificationId = null,Object? status = null,Object? isRead = null,}) {
  return _then(_RecipientStatus(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
