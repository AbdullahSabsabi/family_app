// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exams_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExamsResponse _$ExamsResponseFromJson(Map<String, dynamic> json) =>
    _ExamsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExamsResponseToJson(_ExamsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_ExamModel _$ExamModelFromJson(Map<String, dynamic> json) => _ExamModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  examDate: json['exam_date'] as String?,
  examTime: json['exam_time'] as String?,
  examEndTime: json['exam_end_time'] as String?,
  totalMarks: (json['total_marks'] as num?)?.toInt(),
  passingMarks: (json['passing_marks'] as num?)?.toInt(),
  status: json['status'] as String?,
  examType: json['exam_type'] == null
      ? null
      : ExamType.fromJson(json['exam_type'] as Map<String, dynamic>),
  batchSubject: json['batch_subject'] == null
      ? null
      : BatchSubject.fromJson(json['batch_subject'] as Map<String, dynamic>),
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$ExamModelToJson(_ExamModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'exam_date': instance.examDate,
      'exam_time': instance.examTime,
      'exam_end_time': instance.examEndTime,
      'total_marks': instance.totalMarks,
      'passing_marks': instance.passingMarks,
      'status': instance.status,
      'exam_type': instance.examType,
      'batch_subject': instance.batchSubject,
      'remarks': instance.remarks,
    };

_ExamType _$ExamTypeFromJson(Map<String, dynamic> json) => _ExamType(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$ExamTypeToJson(_ExamType instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
};

_BatchSubject _$BatchSubjectFromJson(Map<String, dynamic> json) =>
    _BatchSubject(
      id: (json['id'] as num?)?.toInt(),
      batch: json['batch'] == null
          ? null
          : Batch.fromJson(json['batch'] as Map<String, dynamic>),
      classRoom: json['class_room'] == null
          ? null
          : ClassRoom.fromJson(json['class_room'] as Map<String, dynamic>),
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(json['subject'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BatchSubjectToJson(_BatchSubject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'batch': instance.batch,
      'class_room': instance.classRoom,
      'subject': instance.subject,
    };

_Batch _$BatchFromJson(Map<String, dynamic> json) =>
    _Batch(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$BatchToJson(_Batch instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_ClassRoom _$ClassRoomFromJson(Map<String, dynamic> json) => _ClassRoom(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$ClassRoomToJson(_ClassRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };

_Subject _$SubjectFromJson(Map<String, dynamic> json) =>
    _Subject(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$SubjectToJson(_Subject instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
