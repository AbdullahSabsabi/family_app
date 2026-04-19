// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GuardianDashboardModel _$GuardianDashboardModelFromJson(
  Map<String, dynamic> json,
) => _GuardianDashboardModel(
  status: json['status'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? null
      : GuardianDashboardData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GuardianDashboardModelToJson(
  _GuardianDashboardModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_GuardianDashboardData _$GuardianDashboardDataFromJson(
  Map<String, dynamic> json,
) => _GuardianDashboardData(
  guardian: GuardianInfo.fromJson(json['guardian'] as Map<String, dynamic>),
  financialSummary: FinancialSummary.fromJson(
    json['financial_summary'] as Map<String, dynamic>,
  ),
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$GuardianDashboardDataToJson(
  _GuardianDashboardData instance,
) => <String, dynamic>{
  'guardian': instance.guardian,
  'financial_summary': instance.financialSummary,
  'children': instance.children,
};

_GuardianInfo _$GuardianInfoFromJson(Map<String, dynamic> json) =>
    _GuardianInfo(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      photoUrl: json['photo_url'] as String?,
      welcomeMessage: json['welcome_message'] as String?,
    );

Map<String, dynamic> _$GuardianInfoToJson(_GuardianInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo_url': instance.photoUrl,
      'welcome_message': instance.welcomeMessage,
    };

_FinancialSummary _$FinancialSummaryFromJson(Map<String, dynamic> json) =>
    _FinancialSummary(
      totalRequiredUsd: (json['total_required_usd'] as num).toDouble(),
      totalPaidUsd: (json['total_paid_usd'] as num).toDouble(),
      totalRemainingUsd: (json['total_remaining_usd'] as num).toDouble(),
      paymentPercentage: (json['payment_percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$FinancialSummaryToJson(_FinancialSummary instance) =>
    <String, dynamic>{
      'total_required_usd': instance.totalRequiredUsd,
      'total_paid_usd': instance.totalPaidUsd,
      'total_remaining_usd': instance.totalRemainingUsd,
      'payment_percentage': instance.paymentPercentage,
    };

_Child _$ChildFromJson(Map<String, dynamic> json) => _Child(
  id: (json['id'] as num).toInt(),
  fullName: json['full_name'] as String,
  photoUrl: json['photo_url'] as String?,
  batch: json['batch'] as String,
);

Map<String, dynamic> _$ChildToJson(_Child instance) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.fullName,
  'photo_url': instance.photoUrl,
  'batch': instance.batch,
};
