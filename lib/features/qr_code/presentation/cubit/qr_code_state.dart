import 'package:familyapp/features/qr_code/domain/models/qr_models.dart';

abstract class QrCodeState {}

class QrCodeInitial extends QrCodeState {}

class QrCodeLoading extends QrCodeState {}

class QrCodeScanSuccess extends QrCodeState {
  final QrSessionResponse response;
  QrCodeScanSuccess(this.response);
}

class QrCodeScanError extends QrCodeState {
  final String message;
  QrCodeScanError(this.message);
}

class QrCodeShowSuccess extends QrCodeState {
  final String qrUrl;
  QrCodeShowSuccess(this.qrUrl);
}
