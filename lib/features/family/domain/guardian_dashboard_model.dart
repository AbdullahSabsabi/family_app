import 'package:freezed_annotation/freezed_annotation.dart';

part 'guardian_dashboard_model.freezed.dart';
part 'guardian_dashboard_model.g.dart';

@freezed
abstract class GuardianDashboardModel with _$GuardianDashboardModel {
  const factory GuardianDashboardModel({
    @Default(false) bool status,
    @Default('') String message,
    GuardianDashboardData? data,
  }) = _GuardianDashboardModel;

  factory GuardianDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$GuardianDashboardModelFromJson(json);
}

@freezed
abstract class GuardianDashboardData with _$GuardianDashboardData {
  const factory GuardianDashboardData({
    required GuardianInfo guardian,
    @JsonKey(name: 'financial_summary')
    required FinancialSummary financialSummary,
    @Default([]) List<Child> children,
  }) = _GuardianDashboardData;

  factory GuardianDashboardData.fromJson(Map<String, dynamic> json) =>
      _$GuardianDashboardDataFromJson(json);
}

@freezed
abstract class GuardianInfo with _$GuardianInfo {
  const factory GuardianInfo({
    required int id,
    required String name,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'welcome_message') String? welcomeMessage,
  }) = _GuardianInfo;

  factory GuardianInfo.fromJson(Map<String, dynamic> json) =>
      _$GuardianInfoFromJson(json);
}

@freezed
abstract class FinancialSummary with _$FinancialSummary {
  const factory FinancialSummary({
    @JsonKey(name: 'total_required_usd') required double totalRequiredUsd,
    @JsonKey(name: 'total_paid_usd') required double totalPaidUsd,
    @JsonKey(name: 'total_remaining_usd') required double totalRemainingUsd,
    @JsonKey(name: 'payment_percentage') required double paymentPercentage,
  }) = _FinancialSummary;

  factory FinancialSummary.fromJson(Map<String, dynamic> json) =>
      _$FinancialSummaryFromJson(json);
}

@freezed
abstract class Child with _$Child {
  const factory Child({
    required int id,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'photo_url') String? photoUrl,
    required String batch,
  }) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
}
