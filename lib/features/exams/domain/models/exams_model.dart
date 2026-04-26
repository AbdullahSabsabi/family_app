import 'package:freezed_annotation/freezed_annotation.dart';

part 'exams_model.freezed.dart';
part 'exams_model.g.dart';

@freezed
abstract class ExamsResponse with _$ExamsResponse {
  const factory ExamsResponse({
    bool? status,
    String? message,
    List<ExamModel>? data,
  }) = _ExamsResponse;

  factory ExamsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExamsResponseFromJson(json);
}

@freezed
abstract class ExamModel with _$ExamModel {
  const factory ExamModel({
    int? id,
    String? name,
    @JsonKey(name: 'exam_date') String? examDate,
    @JsonKey(name: 'exam_time') String? examTime,
    @JsonKey(name: 'exam_end_time') String? examEndTime,
    @JsonKey(name: 'total_marks') int? totalMarks,
    @JsonKey(name: 'passing_marks') int? passingMarks,
    String? status,
    @JsonKey(name: 'exam_type') ExamType? examType,
    @JsonKey(name: 'batch_subject') BatchSubject? batchSubject,
    String? remarks,
  }) = _ExamModel;

  factory ExamModel.fromJson(Map<String, dynamic> json) =>
      _$ExamModelFromJson(json);
}

@freezed
abstract class ExamType with _$ExamType {
  const factory ExamType({
    int? id,
    String? name,
    String? description,
  }) = _ExamType;

  factory ExamType.fromJson(Map<String, dynamic> json) =>
      _$ExamTypeFromJson(json);
}

@freezed
abstract class BatchSubject with _$BatchSubject {
  const factory BatchSubject({
    int? id,
    Batch? batch,
    @JsonKey(name: 'class_room') ClassRoom? classRoom,
    Subject? subject,
  }) = _BatchSubject;

  factory BatchSubject.fromJson(Map<String, dynamic> json) =>
      _$BatchSubjectFromJson(json);
}

@freezed
abstract class Batch with _$Batch {
  const factory Batch({
    int? id,
    String? name,
  }) = _Batch;

  factory Batch.fromJson(Map<String, dynamic> json) =>
      _$BatchFromJson(json);
}

@freezed
abstract class ClassRoom with _$ClassRoom {
  const factory ClassRoom({
    int? id,
    String? name,
    String? code,
  }) = _ClassRoom;

  factory ClassRoom.fromJson(Map<String, dynamic> json) =>
      _$ClassRoomFromJson(json);
}

@freezed
abstract class Subject with _$Subject {
  const factory Subject({
    int? id,
    String? name,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
