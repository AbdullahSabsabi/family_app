import 'package:familyapp/features/qr_code/domain/models/qr_models.dart';

abstract class QrRepository {
  Future<QrSessionResponse> useQrSession(String sessionToken);
  String getQrCodeUrl(int studentId);
}
