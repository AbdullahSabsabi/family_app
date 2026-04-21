import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_models.freezed.dart';
part 'student_models.g.dart';

@freezed
abstract class StudentProfileResponse with _$StudentProfileResponse {
  const factory StudentProfileResponse({
    bool? status,
    String? message,
    StudentData? data,
  }) = _StudentProfileResponse;

  factory StudentProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentProfileResponseFromJson(json);
}

@freezed
abstract class StudentData with _$StudentData {
  const factory StudentData({
    int? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'profile_photo') String? profilePhoto,

    Branch? branch,

    @JsonKey(name: 'institute_branch') InstituteBranch? instituteBranch,

    List<Batch>? batches,

    @JsonKey(name: 'latest_attendance') Attendance? latestAttendance,
  }) = _StudentData;

  factory StudentData.fromJson(Map<String, dynamic> json) =>
      _$StudentDataFromJson(json);
}

@freezed
abstract class MonthlyEvaluationResponse with _$MonthlyEvaluationResponse {
  const factory MonthlyEvaluationResponse({
    bool? status,
    String? message,
    EvaluationData? data,
  }) = _MonthlyEvaluationResponse;

  factory MonthlyEvaluationResponse.fromJson(Map<String, dynamic> json) =>
      _$MonthlyEvaluationResponseFromJson(json);
}

@freezed
abstract class EvaluationData with _$EvaluationData {
  const factory EvaluationData({
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'student_name') String? studentName,
    Map<String, dynamic>? evaluations,
  }) = _EvaluationData;

  factory EvaluationData.fromJson(Map<String, dynamic> json) =>
      _$EvaluationDataFromJson(json);
}

@freezed
abstract class FinancialSummaryResponse with _$FinancialSummaryResponse {
  const factory FinancialSummaryResponse({
    bool? status,
    String? message,
    FinancialData? data,
  }) = _FinancialSummaryResponse;

  factory FinancialSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$FinancialSummaryResponseFromJson(json);
}

@freezed
abstract class FinancialData with _$FinancialData {
  const factory FinancialData({
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'full_name') String? fullName,

    @JsonKey(name: 'enrollment_contract')
    EnrollmentContract? enrollmentContract,

    List<PaymentItem>? payments,

    @JsonKey(name: 'pending_installments')
    List<Installment>? pendingInstallments,
  }) = _FinancialData;

  factory FinancialData.fromJson(Map<String, dynamic> json) =>
      _$FinancialDataFromJson(json);
}

@freezed
abstract class EnrollmentContract with _$EnrollmentContract {
  const factory EnrollmentContract({
    @JsonKey(name: 'contract_id') int? contractId,

    @JsonKey(name: 'total_amount_usd') num? totalAmountUsd,

    @JsonKey(name: 'paid_amount_usd') num? paidAmountUsd,

    @JsonKey(name: 'remaining_amount_usd') num? remainingAmountUsd,

    @JsonKey(name: 'discount_percentage') num? discountPercentage,

    @JsonKey(name: 'discount_amount') num? discountAmount,
  }) = _EnrollmentContract;

  factory EnrollmentContract.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentContractFromJson(json);
}

@freezed
abstract class PaymentItem with _$PaymentItem {
  const factory PaymentItem({
    int? id,

    @JsonKey(name: 'receipt_number') String? receiptNumber,

    @JsonKey(name: 'amount_usd') num? amountUsd,

    @JsonKey(name: 'paid_date') String? paidDate,

    String? note,
  }) = _PaymentItem;

  factory PaymentItem.fromJson(Map<String, dynamic> json) =>
      _$PaymentItemFromJson(json);
}

@freezed
abstract class Installment with _$Installment {
  const factory Installment({
    int? id,

    @JsonKey(name: 'installment_number') int? installmentNumber,

    @JsonKey(name: 'due_date') String? dueDate,

    @JsonKey(name: 'planned_amount_usd') num? plannedAmountUsd,

    @JsonKey(name: 'paid_amount_usd') num? paidAmountUsd,

    @JsonKey(name: 'remaining_amount_usd') num? remainingAmountUsd,

    String? status,
  }) = _Installment;

  factory Installment.fromJson(Map<String, dynamic> json) =>
      _$InstallmentFromJson(json);
}

@freezed
abstract class ExamResponse with _$ExamResponse {
  const factory ExamResponse({bool? status, String? message, ExamData? data}) =
      _ExamResponse;

  factory ExamResponse.fromJson(Map<String, dynamic> json) =>
      _$ExamResponseFromJson(json);
}

@freezed
abstract class ExamData with _$ExamData {
  const factory ExamData({
    @JsonKey(name: 'current_week') List<ExamModel>? currentWeek,
    @JsonKey(name: 'last_week') List<ExamModel>? lastWeek,
  }) = _ExamData;

  factory ExamData.fromJson(Map<String, dynamic> json) =>
      _$ExamDataFromJson(json);
}

@freezed
abstract class ExamModel with _$ExamModel {
  const factory ExamModel({
    int? id,
    @JsonKey(name: 'exam_id') int? examId,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'obtained_marks') String? mark,

    @JsonKey(name: 'is_passed') int? isPassed,

    String? remarks,
    @JsonKey(name: 'subject_name') String? subject,
    @JsonKey(name: 'created_at') String? date,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ExamModel;

  factory ExamModel.fromJson(Map<String, dynamic> json) =>
      _$ExamModelFromJson(json);
}

@freezed
abstract class Branch with _$Branch {
  const factory Branch({int? id, String? name}) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}

@freezed
abstract class InstituteBranch with _$InstituteBranch {
  const factory InstituteBranch({int? id, String? name, String? address}) =
      _InstituteBranch;

  factory InstituteBranch.fromJson(Map<String, dynamic> json) =>
      _$InstituteBranchFromJson(json);
}

@freezed
abstract class Batch with _$Batch {
  const factory Batch({int? id, String? name}) = _Batch;

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
}

@freezed
abstract class Attendance with _$Attendance {
  const factory Attendance({
    String? status,
    @JsonKey(name: 'attendance_date') String? attendanceDate,
  }) = _Attendance;

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
}

@freezed
abstract class FilteredExamResponse with _$FilteredExamResponse {
  const factory FilteredExamResponse({
    bool? status,
    String? message,
    List<FilteredExamModel>? data,
  }) = _FilteredExamResponse;

  factory FilteredExamResponse.fromJson(Map<String, dynamic> json) =>
      _$FilteredExamResponseFromJson(json);
}

@freezed
abstract class FilteredExamModel with _$FilteredExamModel {
  const factory FilteredExamModel({
    int? id,
    @JsonKey(name: 'obtained_marks') dynamic obtainedMarks,
    @JsonKey(name: 'is_passed') dynamic isPassed,
    ExamDetails? exam,
    SubjectDetails? subject,
  }) = _FilteredExamModel;

  factory FilteredExamModel.fromJson(Map<String, dynamic> json) =>
      _$FilteredExamModelFromJson(json);
}

@freezed
abstract class ExamDetails with _$ExamDetails {
  const factory ExamDetails({
    String? name,
    @JsonKey(name: 'total_marks') dynamic totalMarks,
  }) = _ExamDetails;

  factory ExamDetails.fromJson(Map<String, dynamic> json) =>
      _$ExamDetailsFromJson(json);
}

@freezed
abstract class SubjectDetails with _$SubjectDetails {
  const factory SubjectDetails({
    String? name,
  }) = _SubjectDetails;

  factory SubjectDetails.fromJson(Map<String, dynamic> json) =>
      _$SubjectDetailsFromJson(json);
}
