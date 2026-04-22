import 'package:familyapp/features/schedule/data/repo/schedule_repo.dart';
import 'package:familyapp/features/schedule/domain/models/schedule_model.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'schedule_state.dart';

class ScheduleCubit extends HydratedCubit<ScheduleState> {
  final ScheduleRepository _repository;

  ScheduleCubit(this._repository) : super(ScheduleInitial());

  Future<void> getSchedule({required int studentId, String? day}) async {
    Map<int, ScheduleData> currentCache = {};
    if (state is ScheduleSuccess) {
      currentCache = Map<int, ScheduleData>.from(
        (state as ScheduleSuccess).cachedSchedules,
      );
    }

    if (!currentCache.containsKey(studentId)) {
      emit(ScheduleLoading());
    } else {
      emit(
        ScheduleSuccess(
          cachedSchedules: currentCache,
          currentStudentId: studentId,
        ),
      );
    }

    try {
      final response = await _repository.getSchedule(
        studentId: studentId,
        day: day,
      );

      if (response.status == true && response.data != null) {
        currentCache[studentId] = response.data!;
        emit(
          ScheduleSuccess(
            cachedSchedules: currentCache,
            currentStudentId: studentId,
          ),
        );
      } else {
        if (!currentCache.containsKey(studentId)) {
          emit(ScheduleError(response.message ?? "فشل في جلب الجدول"));
        }
      }
    } catch (e) {
      if (!currentCache.containsKey(studentId)) {
        emit(ScheduleError("حدث خطأ أثناء الاتصال بالسيرفر"));
      }
    }
  }

  @override
  ScheduleState? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduleSuccess.fromMap(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ScheduleState state) {
    if (state is ScheduleSuccess) {
      return state.toMap();
    }
    return null;
  }
}
