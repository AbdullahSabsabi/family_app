// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentScheduleResponse _$StudentScheduleResponseFromJson(
  Map<String, dynamic> json,
) => _StudentScheduleResponse(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ScheduleData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentScheduleResponseToJson(
  _StudentScheduleResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_ScheduleData _$ScheduleDataFromJson(Map<String, dynamic> json) =>
    _ScheduleData(
      periodsCount: (json['periods_count'] as num?)?.toInt(),
      periods: json['periods'],
    );

Map<String, dynamic> _$ScheduleDataToJson(_ScheduleData instance) =>
    <String, dynamic>{
      'periods_count': instance.periodsCount,
      'periods': instance.periods,
    };
