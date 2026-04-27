import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class NotificationListResponse with _$NotificationListResponse {
  const factory NotificationListResponse({
    @Default(false) bool status,
    @Default("") String message,
    @Default([]) List<NotificationModel> data,
    PaginationLinks? links,
    PaginationMeta? meta,
  }) = _NotificationListResponse;

  factory NotificationListResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationListResponseFromJson(json);
}

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    @JsonKey(name: 'reception_id') @Default(0) int receptionId,
    @JsonKey(name: 'notification_id') @Default(0) int notificationId,
    @Default("") String title,
    @Default("") String body,
    Sender? sender,
    @Default([]) List<AttachmentModel> attachments,
    @JsonKey(name: 'is_read') @Default(false) bool isRead,
    @JsonKey(name: 'read_at') String? readAt,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'created_at_human') @Default("") String createdAtHuman,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
abstract class Sender with _$Sender {
  const factory Sender({
    int? id,
    String? type,
    @JsonKey(name: 'display_name') String? displayName,
  }) = _Sender;

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}

@freezed
abstract class AttachmentModel with _$AttachmentModel {
  const factory AttachmentModel({
    @Default(0) int id,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'name') String? name,
    @Default("") String url,
    @JsonKey(name: 'mime_type') @Default("") String mimeType,
    @JsonKey(name: 'size_formatted') @Default("") String sizeFormatted,
    @JsonKey(name: 'is_image') @Default(false) bool isImage,
  }) = _AttachmentModel;

  factory AttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentModelFromJson(json);
}

@freezed
abstract class PaginationLinks with _$PaginationLinks {
  const factory PaginationLinks({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
}

@freezed
abstract class PaginationMeta with _$PaginationMeta {
  const factory PaginationMeta({
    @JsonKey(name: 'current_page') @Default(1) int currentPage,
    int? from,
    @JsonKey(name: 'last_page') @Default(1) int lastPage,
    @JsonKey(name: 'per_page') @Default(10) int perPage,
    int? to,
    @Default(0) int total,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}

@freezed
abstract class NotificationDetailResponse with _$NotificationDetailResponse {
  const factory NotificationDetailResponse({
    @Default(false) bool status,
    @Default("") String message,
    NotificationDetailData? data,
  }) = _NotificationDetailResponse;

  factory NotificationDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationDetailResponseFromJson(json);
}

@freezed
abstract class NotificationDetailData with _$NotificationDetailData {
  const factory NotificationDetailData({
    required RecipientStatus recipient,
    required NotificationModel notification,
  }) = _NotificationDetailData;

  factory NotificationDetailData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDetailDataFromJson(json);
}

@freezed
abstract class RecipientStatus with _$RecipientStatus {
  const factory RecipientStatus({
    @Default(0) int id,
    @JsonKey(name: 'notification_id') @Default(0) int notificationId,
    @Default("") String status,
    @JsonKey(name: 'is_read') @Default(false) bool isRead,
  }) = _RecipientStatus;

  factory RecipientStatus.fromJson(Map<String, dynamic> json) =>
      _$RecipientStatusFromJson(json);
}
