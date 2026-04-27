// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationListResponse _$NotificationListResponseFromJson(
  Map<String, dynamic> json,
) => _NotificationListResponse(
  status: json['status'] as bool? ?? false,
  message: json['message'] as String? ?? "",
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  links: json['links'] == null
      ? null
      : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NotificationListResponseToJson(
  _NotificationListResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
  'links': instance.links,
  'meta': instance.meta,
};

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      receptionId: (json['reception_id'] as num?)?.toInt() ?? 0,
      notificationId: (json['notification_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      body: json['body'] as String? ?? "",
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isRead: json['is_read'] as bool? ?? false,
      readAt: json['read_at'] as String?,
      createdAt: json['created_at'] as String? ?? "",
      createdAtHuman: json['created_at_human'] as String? ?? "",
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'reception_id': instance.receptionId,
      'notification_id': instance.notificationId,
      'title': instance.title,
      'body': instance.body,
      'sender': instance.sender,
      'attachments': instance.attachments,
      'is_read': instance.isRead,
      'read_at': instance.readAt,
      'created_at': instance.createdAt,
      'created_at_human': instance.createdAtHuman,
    };

_Sender _$SenderFromJson(Map<String, dynamic> json) => _Sender(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  displayName: json['display_name'] as String?,
);

Map<String, dynamic> _$SenderToJson(_Sender instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'display_name': instance.displayName,
};

_AttachmentModel _$AttachmentModelFromJson(Map<String, dynamic> json) =>
    _AttachmentModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      fileName: json['file_name'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String? ?? "",
      mimeType: json['mime_type'] as String? ?? "",
      sizeFormatted: json['size_formatted'] as String? ?? "",
      isImage: json['is_image'] as bool? ?? false,
    );

Map<String, dynamic> _$AttachmentModelToJson(_AttachmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file_name': instance.fileName,
      'name': instance.name,
      'url': instance.url,
      'mime_type': instance.mimeType,
      'size_formatted': instance.sizeFormatted,
      'is_image': instance.isImage,
    };

_PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) =>
    _PaginationLinks(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$PaginationLinksToJson(_PaginationLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

_PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) =>
    _PaginationMeta(
      currentPage: (json['current_page'] as num?)?.toInt() ?? 1,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 10,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PaginationMetaToJson(_PaginationMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

_NotificationDetailResponse _$NotificationDetailResponseFromJson(
  Map<String, dynamic> json,
) => _NotificationDetailResponse(
  status: json['status'] as bool? ?? false,
  message: json['message'] as String? ?? "",
  data: json['data'] == null
      ? null
      : NotificationDetailData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NotificationDetailResponseToJson(
  _NotificationDetailResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_NotificationDetailData _$NotificationDetailDataFromJson(
  Map<String, dynamic> json,
) => _NotificationDetailData(
  recipient: RecipientStatus.fromJson(
    json['recipient'] as Map<String, dynamic>,
  ),
  notification: NotificationModel.fromJson(
    json['notification'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$NotificationDetailDataToJson(
  _NotificationDetailData instance,
) => <String, dynamic>{
  'recipient': instance.recipient,
  'notification': instance.notification,
};

_RecipientStatus _$RecipientStatusFromJson(Map<String, dynamic> json) =>
    _RecipientStatus(
      id: (json['id'] as num?)?.toInt() ?? 0,
      notificationId: (json['notification_id'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "",
      isRead: json['is_read'] as bool? ?? false,
    );

Map<String, dynamic> _$RecipientStatusToJson(_RecipientStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notification_id': instance.notificationId,
      'status': instance.status,
      'is_read': instance.isRead,
    };
