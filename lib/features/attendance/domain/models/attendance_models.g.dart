// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceResponse _$AttendanceResponseFromJson(Map<String, dynamic> json) =>
    _AttendanceResponse(
      studentId: json['student_id'],
      attendedToday: json['attended_today'] as bool?,
      count: (json['count'] as num?)?.toInt(),
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => AttendanceRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AttendanceResponseToJson(_AttendanceResponse instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'attended_today': instance.attendedToday,
      'count': instance.count,
      'records': instance.records,
    };

_AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) =>
    _AttendanceRecord(
      date: json['date'] as String?,
      checkIn: json['check_in'] as String?,
      checkOut: json['check_out'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AttendanceRecordToJson(_AttendanceRecord instance) =>
    <String, dynamic>{
      'date': instance.date,
      'check_in': instance.checkIn,
      'check_out': instance.checkOut,
      'status': instance.status,
    };
