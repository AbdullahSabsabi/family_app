import 'package:familyapp/features/family/domain/guardian_dashboard_model.dart';

abstract class GuardianDashboardState {}

class GuardianDashboardInitial extends GuardianDashboardState {}

class GuardianDashboardLoading extends GuardianDashboardState {}

class GuardianDashboardSuccess extends GuardianDashboardState {
  final GuardianDashboardModel data;

  GuardianDashboardSuccess(this.data);

  factory GuardianDashboardSuccess.fromMap(Map<String, dynamic> map) {
    return GuardianDashboardSuccess(GuardianDashboardModel.fromJson(map));
  }

  Map<String, dynamic> toMap() {
    return data.toJson();
  }
}

class GuardianDashboardError extends GuardianDashboardState {
  final String message;
  GuardianDashboardError(this.message);
}
