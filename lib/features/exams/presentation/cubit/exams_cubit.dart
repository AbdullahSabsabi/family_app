import 'package:familyapp/features/exams/data/repo/exams_repository.dart';
import 'package:familyapp/features/exams/domain/models/exams_model.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'exams_state.dart';

class ExamsCubit extends HydratedCubit<ExamsState> {
  final ExamsRepository _repository;

  ExamsCubit(this._repository) : super(ExamsInitial());

  Future<void> getExams({
    required int studentId,
    required String date,
    bool isRefresh = false,
  }) async {
    Map<int, Map<String, List<ExamModel>>> currentCache = {};
    bool hasData = false;

    if (state is ExamsSuccess) {
      final success = state as ExamsSuccess;
      currentCache = Map<int, Map<String, List<ExamModel>>>.from(
        success.cachedExams,
      );
      hasData =
          currentCache.containsKey(studentId) &&
          currentCache[studentId]!.containsKey(date);
    }

    if (!hasData && !isRefresh) {
      emit(ExamsLoading());
    } else if (state is ExamsSuccess) {
      emit(
        (state as ExamsSuccess).copyWith(
          isRefreshing: isRefresh,
          isDayLoading: !isRefresh,
        ),
      );
    }

    try {
      final response = await _repository.getStudentExams(
        studentId: studentId,
        date: date,
      );

      if (response.status == true) {
        if (!currentCache.containsKey(studentId)) {
          currentCache[studentId] = {};
        }
        currentCache[studentId]![date] = response.data ?? [];

        emit(
          ExamsSuccess(
            cachedExams: currentCache,
            currentStudentId: studentId,
            currentDate: date,
            isRefreshing: false,
            isDayLoading: false,
          ),
        );
      } else {
        if (state is ExamsSuccess) {
          emit(
            (state as ExamsSuccess).copyWith(
              isRefreshing: false,
              isDayLoading: false,
            ),
          );
        } else {
          emit(ExamsError(response.message ?? "فشل في جلب المذاكرات"));
        }
      }
    } catch (e) {
      if (state is ExamsSuccess) {
        emit(
          (state as ExamsSuccess).copyWith(
            isRefreshing: false,
            isDayLoading: false,
          ),
        );
      } else {
        emit(ExamsError("حدث خطأ أثناء الاتصال بالسيرفر: $e"));
      }
    }
  }

  @override
  ExamsState? fromJson(Map<String, dynamic> json) {
    try {
      return ExamsSuccess.fromMap(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ExamsState state) {
    if (state is ExamsSuccess) {
      return state.toMap();
    }
    return null;
  }
}
