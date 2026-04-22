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
    Map<String, Map<String, List<PeriodModel>>>? periods,
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
    String? type,
  }) = _PeriodModel;

  factory PeriodModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodModelFromJson(json);
}
