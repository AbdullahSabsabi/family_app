import 'package:dio/dio.dart';
import 'package:familyapp/features/qr_code/domain/models/qr_models.dart';

class QrCodeRemoteDataSource {
  final Dio _dio;

  QrCodeRemoteDataSource(this._dio);

  Future<QrSessionResponse> useQrSession(String sessionToken) async {
    try {
      final response = await _dio.post(
        '/door-sessions/use',
        data: {'session_token': sessionToken},
      );
      return QrSessionResponse.fromJson(response.data);
    } catch (e) {
      if (e is DioException && e.response != null) {
        return QrSessionResponse.fromJson(e.response!.data);
      }
      return QrSessionResponse(
        status: false,
        message: "حدث خطأ غير متوقع",
      );
    }
  }
}
