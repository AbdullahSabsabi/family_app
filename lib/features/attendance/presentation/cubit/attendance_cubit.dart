import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:familyapp/features/attendance/data/repo/attendance_repo.dart';
import 'package:familyapp/features/attendance/presentation/cubit/attendance_state.dart';
import 'package:familyapp/features/attendance/domain/models/attendance_models.dart';

class AttendanceCubit extends HydratedCubit<AttendanceState> {
  final AttendanceRepository _repository;

  AttendanceCubit(this._repository) : super(AttendanceInitial());

  Future<void> getAttendance({required int studentId, String? date}) async {
    final dateKey = date ?? 'weekly';

    Map<int, Map<String, AttendanceResponse>> currentCache = {};
    if (state is AttendanceSuccess) {
      currentCache = (state as AttendanceSuccess).cachedAttendance.map(
        (key, value) =>
            MapEntry(key, Map<String, AttendanceResponse>.from(value)),
      );
    }

    final studentCache = currentCache[studentId] ?? {};
    final hasCache = studentCache.containsKey(dateKey);

    if (hasCache) {
      emit(
        AttendanceSuccess(
          cachedAttendance: currentCache,
          currentStudentId: studentId,
          currentDateKey: dateKey,
          lastFetchedResult: studentCache[dateKey],
        ),
      );
    } else {
      emit(AttendanceLoading());
    }

    try {
      final attendance = await _repository.getWeeklyAttendance(
        studentId: studentId,
        date: date,
      );

      if (currentCache[studentId] == null) {
        currentCache[studentId] = {};
      }
      currentCache[studentId]![dateKey] = attendance;

      emit(
        AttendanceSuccess(
          cachedAttendance: currentCache,
          currentStudentId: studentId,
          currentDateKey: dateKey,
          lastFetchedResult: attendance,
        ),
      );
    } catch (e) {
      if (hasCache) {
        emit(
          AttendanceSuccess(
            cachedAttendance: currentCache,
            currentStudentId: studentId,
            currentDateKey: dateKey,
            lastFetchedResult: studentCache[dateKey],
          ),
        );
      } else {
        emit(
          AttendanceError(
            "فشل في جلب البيانات، يرجى التحقق من الاتصال بالإنترنت",
          ),
        );
      }
    }
  }

  @override
  AttendanceState? fromJson(Map<String, dynamic> json) {
    try {
      final type = json['type'] as String;
      if (type == 'Success') {
        return AttendanceSuccess.fromJson(json);
      }
    } catch (_) {}
    return null;
  }

  @override
  Map<String, dynamic>? toJson(AttendanceState state) {
    if (state is AttendanceSuccess) {
      return state.toJson();
    }
    return null;
  }
}
