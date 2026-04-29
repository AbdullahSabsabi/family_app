// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QrSessionResponse _$QrSessionResponseFromJson(Map<String, dynamic> json) =>
    _QrSessionResponse(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$QrSessionResponseToJson(_QrSessionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
