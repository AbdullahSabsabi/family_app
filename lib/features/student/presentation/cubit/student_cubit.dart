import 'package:familyapp/features/student/data/repo/student_repo.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'student_state.dart';

class StudentCubit extends HydratedCubit<StudentState> {
  final StudentRepository _repository;

  StudentCubit(this._repository) : super(StudentInitial());

  Future<void> getStudentDetails(int studentId) async {
    Map<int, StudentDataContainer> currentCache = {};
    if (state is StudentSuccess) {
      currentCache = Map<int, StudentDataContainer>.from(
        (state as StudentSuccess).cachedStudents,
      );
    }

    if (!currentCache.containsKey(studentId)) {
      emit(StudentLoading());
    } else {
      emit(
        StudentSuccess(
          cachedStudents: currentCache,
          currentStudentId: studentId,
        ),
      );
    }

    try {
      final results = await Future.wait([
        _repository.getStudentProfile(studentId: studentId),
        _repository
            .getMonthlyEvaluations(studentId: studentId)
            .catchError(
              (e) => const MonthlyEvaluationResponse(
                status: false,
                data: EvaluationData(evaluations: {}),
              ),
            ),
        _repository
            .getFinancialSummary(studentId: studentId)
            .catchError(
              (e) => const FinancialSummaryResponse(
                status: false,
                data: FinancialData(pendingInstallments: [], payments: []),
              ),
            ),
        _repository
            .getStudentExams(studentId: studentId)
            .catchError(
              (e) => const ExamResponse(
                status: false,
                data: ExamData(currentWeek: [], lastWeek: []),
              ),
            ),
      ]);

      final studentNewData = StudentDataContainer(
        profile: results[0] as StudentProfileResponse,
        evaluations: results[1] as MonthlyEvaluationResponse,
        finance: results[2] as FinancialSummaryResponse,
        exams: results[3] as ExamResponse,
      );

      currentCache[studentId] = studentNewData;

      emit(
        StudentSuccess(
          cachedStudents: currentCache,
          currentStudentId: studentId,
        ),
      );
    } catch (e) {
      if (!currentCache.containsKey(studentId)) {
        emit(StudentError("فشل في جلب بيانات الطالب، يرجى المحاولة لاحقاً"));
      }
    }
  }

  @override
  StudentState? fromJson(Map<String, dynamic> json) {
    try {
      return StudentSuccess.fromMap(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(StudentState state) {
    if (state is StudentSuccess) {
      return state.toMap();
    }
    return null;
  }
}
