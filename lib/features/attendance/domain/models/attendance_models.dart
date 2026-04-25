import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_models.freezed.dart';
part 'attendance_models.g.dart';

@freezed
abstract class AttendanceResponse with _$AttendanceResponse {
  const factory AttendanceResponse({
    @JsonKey(name: 'student_id') dynamic studentId,
    @JsonKey(name: 'attended_today') bool? attendedToday,
    int? count,
    List<AttendanceRecord>? records,
  }) = _AttendanceResponse;

  factory AttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceResponseFromJson(json);
}

@freezed
abstract class AttendanceRecord with _$AttendanceRecord {
  const factory AttendanceRecord({
    String? date,
    @JsonKey(name: 'check_in') String? checkIn,
    @JsonKey(name: 'check_out') String? checkOut,
    String? status, // (present | absent | late)
  }) = _AttendanceRecord;

  factory AttendanceRecord.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordFromJson(json);
}
