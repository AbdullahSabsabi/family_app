import 'package:familyapp/features/family/data/repo/family_repo.dart';
import 'package:familyapp/features/family/presentation/cubit/family_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class GuardianDashboardCubit extends HydratedCubit<GuardianDashboardState> {
  final IGuardianRepository _repository;

  GuardianDashboardCubit(this._repository) : super(GuardianDashboardInitial());

  Future<void> getDashboardData() async {
    if (state is! GuardianDashboardSuccess) {
      emit(GuardianDashboardLoading());
    }

    try {
      final result = await _repository.getGuardianDashboard();
      if (result.status) {
        emit(GuardianDashboardSuccess(result));
      } else {
        emit(GuardianDashboardError(result.message));
      }
    } catch (e) {
      if (state is! GuardianDashboardSuccess) {
        emit(GuardianDashboardError(e.toString()));
      }
    }
  }

  @override
  GuardianDashboardState? fromJson(Map<String, dynamic> json) {
    try {
      return GuardianDashboardSuccess.fromMap(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(GuardianDashboardState state) {
    if (state is GuardianDashboardSuccess) {
      return state.toMap();
    }
    return null;
  }
}
