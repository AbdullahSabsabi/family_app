// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentProfileResponse _$StudentProfileResponseFromJson(
  Map<String, dynamic> json,
) => _StudentProfileResponse(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : StudentData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentProfileResponseToJson(
  _StudentProfileResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_StudentData _$StudentDataFromJson(Map<String, dynamic> json) => _StudentData(
  id: (json['id'] as num?)?.toInt(),
  fullName: json['full_name'] as String?,
  profilePhoto: json['profile_photo'] as String?,
  branch: json['branch'] == null
      ? null
      : Branch.fromJson(json['branch'] as Map<String, dynamic>),
  instituteBranch: json['institute_branch'] == null
      ? null
      : InstituteBranch.fromJson(
          json['institute_branch'] as Map<String, dynamic>,
        ),
  batches: (json['batches'] as List<dynamic>?)
      ?.map((e) => Batch.fromJson(e as Map<String, dynamic>))
      .toList(),
  latestAttendance: json['latest_attendance'] == null
      ? null
      : Attendance.fromJson(json['latest_attendance'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentDataToJson(_StudentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'profile_photo': instance.profilePhoto,
      'branch': instance.branch,
      'institute_branch': instance.instituteBranch,
      'batches': instance.batches,
      'latest_attendance': instance.latestAttendance,
    };

_MonthlyEvaluationResponse _$MonthlyEvaluationResponseFromJson(
  Map<String, dynamic> json,
) => _MonthlyEvaluationResponse(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : EvaluationData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MonthlyEvaluationResponseToJson(
  _MonthlyEvaluationResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_EvaluationData _$EvaluationDataFromJson(Map<String, dynamic> json) =>
    _EvaluationData(
      studentId: (json['student_id'] as num?)?.toInt(),
      studentName: json['student_name'] as String?,
      evaluations: json['evaluations'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EvaluationDataToJson(_EvaluationData instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'student_name': instance.studentName,
      'evaluations': instance.evaluations,
    };

_FinancialSummaryResponse _$FinancialSummaryResponseFromJson(
  Map<String, dynamic> json,
) => _FinancialSummaryResponse(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : FinancialData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FinancialSummaryResponseToJson(
  _FinancialSummaryResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_FinancialData _$FinancialDataFromJson(Map<String, dynamic> json) =>
    _FinancialData(
      studentId: (json['student_id'] as num?)?.toInt(),
      fullName: json['full_name'] as String?,
      enrollmentContract: json['enrollment_contract'] == null
          ? null
          : EnrollmentContract.fromJson(
              json['enrollment_contract'] as Map<String, dynamic>,
            ),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pendingInstallments: (json['pending_installments'] as List<dynamic>?)
          ?.map((e) => Installment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FinancialDataToJson(_FinancialData instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'full_name': instance.fullName,
      'enrollment_contract': instance.enrollmentContract,
      'payments': instance.payments,
      'pending_installments': instance.pendingInstallments,
    };

_EnrollmentContract _$EnrollmentContractFromJson(Map<String, dynamic> json) =>
    _EnrollmentContract(
      contractId: (json['contract_id'] as num?)?.toInt(),
      totalAmountUsd: json['total_amount_usd'] as num?,
      paidAmountUsd: json['paid_amount_usd'] as num?,
      remainingAmountUsd: json['remaining_amount_usd'] as num?,
      discountPercentage: json['discount_percentage'] as num?,
      discountAmount: json['discount_amount'] as num?,
    );

Map<String, dynamic> _$EnrollmentContractToJson(_EnrollmentContract instance) =>
    <String, dynamic>{
      'contract_id': instance.contractId,
      'total_amount_usd': instance.totalAmountUsd,
      'paid_amount_usd': instance.paidAmountUsd,
      'remaining_amount_usd': instance.remainingAmountUsd,
      'discount_percentage': instance.discountPercentage,
      'discount_amount': instance.discountAmount,
    };

_PaymentItem _$PaymentItemFromJson(Map<String, dynamic> json) => _PaymentItem(
  id: (json['id'] as num?)?.toInt(),
  receiptNumber: json['receipt_number'] as String?,
  amountUsd: json['amount_usd'] as num?,
  paidDate: json['paid_date'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$PaymentItemToJson(_PaymentItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'receipt_number': instance.receiptNumber,
      'amount_usd': instance.amountUsd,
      'paid_date': instance.paidDate,
      'note': instance.note,
    };

_Installment _$InstallmentFromJson(Map<String, dynamic> json) => _Installment(
  id: (json['id'] as num?)?.toInt(),
  installmentNumber: (json['installment_number'] as num?)?.toInt(),
  dueDate: json['due_date'] as String?,
  plannedAmountUsd: json['planned_amount_usd'] as num?,
  paidAmountUsd: json['paid_amount_usd'] as num?,
  remainingAmountUsd: json['remaining_amount_usd'] as num?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$InstallmentToJson(_Installment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'installment_number': instance.installmentNumber,
      'due_date': instance.dueDate,
      'planned_amount_usd': instance.plannedAmountUsd,
      'paid_amount_usd': instance.paidAmountUsd,
      'remaining_amount_usd': instance.remainingAmountUsd,
      'status': instance.status,
    };

_ExamResponse _$ExamResponseFromJson(Map<String, dynamic> json) =>
    _ExamResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ExamData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExamResponseToJson(_ExamResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_ExamData _$ExamDataFromJson(Map<String, dynamic> json) => _ExamData(
  currentWeek: (json['current_week'] as List<dynamic>?)
      ?.map((e) => ExamModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  lastWeek: (json['last_week'] as List<dynamic>?)
      ?.map((e) => ExamModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ExamDataToJson(_ExamData instance) => <String, dynamic>{
  'current_week': instance.currentWeek,
  'last_week': instance.lastWeek,
};

_ExamModel _$ExamModelFromJson(Map<String, dynamic> json) => _ExamModel(
  id: (json['id'] as num?)?.toInt(),
  examId: (json['exam_id'] as num?)?.toInt(),
  studentId: (json['student_id'] as num?)?.toInt(),
  mark: json['obtained_marks'] as String?,
  isPassed: (json['is_passed'] as num?)?.toInt(),
  remarks: json['remarks'] as String?,
  subject: json['subject_name'] as String?,
  date: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$ExamModelToJson(_ExamModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exam_id': instance.examId,
      'student_id': instance.studentId,
      'obtained_marks': instance.mark,
      'is_passed': instance.isPassed,
      'remarks': instance.remarks,
      'subject_name': instance.subject,
      'created_at': instance.date,
      'updated_at': instance.updatedAt,
    };

_Branch _$BranchFromJson(Map<String, dynamic> json) =>
    _Branch(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$BranchToJson(_Branch instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_InstituteBranch _$InstituteBranchFromJson(Map<String, dynamic> json) =>
    _InstituteBranch(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$InstituteBranchToJson(_InstituteBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };

_Batch _$BatchFromJson(Map<String, dynamic> json) =>
    _Batch(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$BatchToJson(_Batch instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_Attendance _$AttendanceFromJson(Map<String, dynamic> json) => _Attendance(
  status: json['status'] as String?,
  attendanceDate: json['attendance_date'] as String?,
);

Map<String, dynamic> _$AttendanceToJson(_Attendance instance) =>
    <String, dynamic>{
      'status': instance.status,
      'attendance_date': instance.attendanceDate,
    };
