import 'package:familyapp/features/family/domain/guardian_dashboard_model.dart';

abstract class IGuardianRepository {
  /// تعيد [GuardianDashboardModel] في حال النجاح
  /// أو ترمي [Exception] في حال حدوث خطأ
  Future<GuardianDashboardModel> getGuardianDashboard();
}
