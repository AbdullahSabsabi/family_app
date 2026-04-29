import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_models.freezed.dart';
part 'qr_models.g.dart';

@freezed
abstract class QrSessionResponse with _$QrSessionResponse {
  const factory QrSessionResponse({
    required bool status,
    required String message,
    dynamic data,
  }) = _QrSessionResponse;

  factory QrSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$QrSessionResponseFromJson(json);
}
