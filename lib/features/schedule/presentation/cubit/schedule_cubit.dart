import 'package:familyapp/features/schedule/data/repo/schedule_repo.dart';
import 'package:familyapp/features/schedule/domain/models/schedule_model.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'schedule_state.dart';


class ScheduleCubit extends HydratedCubit<ScheduleState> {
  final ScheduleRepository _repository;

  ScheduleCubit(this._repository) : super(ScheduleInitial());

  Future<void> getSchedule({required int studentId, String? day}) async {
    Map<int, ScheduleData> currentCache = {};
    bool hasStudent = false;
    
    if (state is ScheduleSuccess) {
      currentCache = Map<int, ScheduleData>.from(
        (state as ScheduleSuccess).cachedSchedules,
      );
      hasStudent = currentCache.containsKey(studentId);
    }

    if (!hasStudent) {
      emit(ScheduleLoading());
    } else {
      emit(
        (state as ScheduleSuccess).copyWith(
          isRefreshing: day == null,
          isDayLoading: day != null,
        ),
      );
    }

    try {
      final response = await _repository.getSchedule(
        studentId: studentId,
        day: day ?? _getCurrentDayName(),
      );

      if (response.status == true && response.data != null) {
        currentCache[studentId] = response.data!;
        emit(
          ScheduleSuccess(
            cachedSchedules: currentCache,
            currentStudentId: studentId,
            isRefreshing: false,
            isDayLoading: false,
          ),
        );
      } else {
        if (hasStudent) {
          emit((state as ScheduleSuccess).copyWith(isRefreshing: false, isDayLoading: false));
        } else {
          emit(ScheduleError(response.message ?? "فشل في جلب الجدول"));
        }
      }
    } catch (e) {
      print("Schedule API Error: $e");
      if (hasStudent) {
        emit((state as ScheduleSuccess).copyWith(isRefreshing: false, isDayLoading: false));
      } else {
        emit(ScheduleError("حدث خطأ أثناء الاتصال بالسيرفر: $e"));
      }
    }
  }

  String _getCurrentDayName() {
    final days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    return days[DateTime.now().weekday - 1];
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
