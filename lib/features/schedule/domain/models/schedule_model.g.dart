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
      periods: (json['periods'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              k,
              (e as List<dynamic>)
                  .map((e) => PeriodModel.fromJson(e as Map<String, dynamic>))
                  .toList(),
            ),
          ),
        ),
      ),
    );

Map<String, dynamic> _$ScheduleDataToJson(_ScheduleData instance) =>
    <String, dynamic>{
      'periods_count': instance.periodsCount,
      'periods': instance.periods,
    };

_PeriodModel _$PeriodModelFromJson(Map<String, dynamic> json) => _PeriodModel(
  batchName: json['batch_name'] as String?,
  subject: json['subject'] as String?,
  classRoom: json['class_room'] as String?,
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$PeriodModelToJson(_PeriodModel instance) =>
    <String, dynamic>{
      'batch_name': instance.batchName,
      'subject': instance.subject,
      'class_room': instance.classRoom,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'type': instance.type,
    };
