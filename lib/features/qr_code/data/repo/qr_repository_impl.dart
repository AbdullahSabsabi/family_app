import 'package:familyapp/features/qr_code/data/datasources/qr_remote_data_source.dart';
import 'package:familyapp/features/qr_code/domain/models/qr_models.dart';
import 'package:familyapp/features/qr_code/domain/repo/qr_repository.dart';

class QrRepositoryImpl implements QrRepository {
  final QrCodeRemoteDataSource _remoteDataSource;
  final String _baseUrl = "http://46.225.180.151/test/api";

  QrRepositoryImpl(this._remoteDataSource);

  @override
  Future<QrSessionResponse> useQrSession(String sessionToken) async {
    return await _remoteDataSource.useQrSession(sessionToken);
  }

  @override
  String getQrCodeUrl(int studentId) {
    return "$_baseUrl/enrollments/qr-code?student_id=$studentId";
  }
}
