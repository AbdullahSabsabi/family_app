import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
abstract class StudentScheduleResponse with _$StudentScheduleResponse {
  const factory StudentScheduleResponse({
    bool? status,
    String? message,
    ScheduleData? data,
  }) = _StudentScheduleResponse;

  factory StudentScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentScheduleResponseFromJson(json);
}

@freezed
abstract class ScheduleData with _$ScheduleData {
  const factory ScheduleData({
    @JsonKey(name: 'periods_count') int? periodsCount,
    dynamic periods,
  }) = _ScheduleData;

  factory ScheduleData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDataFromJson(json);
}

@freezed
abstract class PeriodModel with _$PeriodModel {
  const factory PeriodModel({
    @JsonKey(name: 'batch_name') String? batchName,
    String? subject,
    @JsonKey(name: 'class_room') String? classRoom,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'period_time') Map<String, dynamic>? periodTime,
    String? type,
    @JsonKey(name: 'is_default') bool? isDefault,
    String? supervisor,
  }) = _PeriodModel;

  factory PeriodModel.fromJson(Map<String, dynamic> json) {
    // Extract nested time if available
    String? start = json['start_time']?.toString();
    String? end = json['end_time']?.toString();
    
    if (json['period_time'] != null && json['period_time'] is Map) {
      final pTime = json['period_time'] as Map<String, dynamic>;
      start ??= pTime['start_time']?.toString();
      end ??= pTime['end_time']?.toString();
    }

    return PeriodModel(
      batchName: json['batch_name']?.toString(),
      subject: json['subject']?.toString(),
      classRoom: json['class_room']?.toString(),
      startTime: start,
      endTime: end,
      type: json['type']?.toString(),
      isDefault: json['is_default'] == true || json['is_default'] == 1 || json['is_default'] == "1",
      supervisor: json['supervisor']?.toString(),
      periodTime: json['period_time'] is Map ? Map<String, dynamic>.from(json['period_time']) : null,
    );
  }
}
