import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:familyapp/features/qr_code/data/repo/qr_repository.dart';
import 'package:familyapp/features/qr_code/presentation/cubit/qr_code_state.dart';

class QrCodeCubit extends Cubit<QrCodeState> {
  final QrRepository _repository;

  QrCodeCubit(this._repository) : super(QrCodeInitial());

  Future<void> useQrSession(String sessionToken) async {
    emit(QrCodeLoading());
    try {
      final response = await _repository.useQrSession(sessionToken);
      if (response.status) {
        emit(QrCodeScanSuccess(response));
      } else {
        emit(QrCodeScanError(response.message));
      }
    } catch (e) {
      emit(QrCodeScanError("حدث خطأ في عملية المسح"));
    }
  }

  void getQrUrl(int studentId) {
    final url = _repository.getQrCodeUrl(studentId);
    emit(QrCodeShowSuccess(url));
  }
}
