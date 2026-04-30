import 'package:familyapp/features/student/data/repo/student_repo.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'student_state.dart';

class StudentCubit extends HydratedCubit<StudentState> {
  final StudentRepository _repository;

  StudentCubit(this._repository) : super(StudentInitial());

  Future<void> getStudentDetails(int studentId) async {
    Map<int, StudentDataContainer> currentCache = {};
    bool wasOffline = false;

    if (state is StudentSuccess) {
      final successState = state as StudentSuccess;
      currentCache = Map<int, StudentDataContainer>.from(successState.cachedStudents);
      wasOffline = successState.isOffline;
    }

    final hasData = currentCache.containsKey(studentId);
    final isOnline = await InternetConnection().hasInternetAccess;

    if (!hasData) {
      if (!isOnline) {
        emit(StudentError("لا يوجد اتصال بالإنترنت ولا توجد بيانات مخزنة"));
        return;
      }
      emit(StudentLoading());
    } else {
      // If we have data, we stay in success state but can show we are refreshing or offline
      emit(StudentSuccess(
        cachedStudents: currentCache,
        currentStudentId: studentId,
        isOffline: !isOnline,
      ));
      
      // If offline, we don't try to fetch, just keep showing the cache
      if (!isOnline) return;
    }

    try {
      final results = await Future.wait([
        _repository.getStudentProfile(studentId: studentId).catchError(
              (e) => throw e, // Rethrow to trigger the main catch if profile fails
            ),
        _repository.getMonthlyEvaluations(studentId: studentId).catchError(
              (e) => const MonthlyEvaluationResponse(
                status: false,
                data: EvaluationData(evaluations: {}),
              ),
            ),
        _repository.getFinancialSummary(studentId: studentId).catchError(
              (e) => const FinancialSummaryResponse(
                status: false,
                data: FinancialData(pendingInstallments: [], payments: []),
              ),
            ),
        _repository.getStudentExams(studentId: studentId).catchError(
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
          isOffline: false,
        ),
      );
    } catch (e) {
      if (hasData) {
        // Keep showing old data but mark as offline/error
        emit((state as StudentSuccess).copyWith(
          isOffline: true,
          errorMessage: "فشل تحديث البيانات، يتم عرض النسخة المخزنة",
        ));
      } else {
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
