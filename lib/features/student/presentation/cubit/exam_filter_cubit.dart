import 'package:familyapp/features/student/data/repo/student_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'exam_filter_state.dart';

class ExamFilterCubit extends Cubit<ExamFilterState> {
  final StudentRepository _repository;

  ExamFilterCubit(this._repository) : super(ExamFilterInitial());

  Future<void> filterExams({
    required int studentId,
    int? subjectId,
    String? date,
    String? dateFrom,
    String? dateTo,
    num? marksFrom,
    num? marksTo,
    int? isPassed,
  }) async {
    emit(ExamFilterLoading());
    try {
      final response = await _repository.getFilteredExams(
        studentId: studentId,
        subjectId: subjectId,
        date: date,
        dateFrom: dateFrom,
        dateTo: dateTo,
        marksFrom: marksFrom,
        marksTo: marksTo,
        isPassed: isPassed,
      );
      emit(ExamFilterSuccess(response));
    } catch (e) {
      emit(ExamFilterError("فشل في تطبيق الفلترة، يرجى المحاولة لاحقاً"));
    }
  }

  void resetFilter() {
    emit(ExamFilterInitial());
  }

  Future<void> getSubjects({required int studentId}) async {
    emit(ExamFilterSubjectsLoading());
    try {
      final response = await _repository.getEnrolledSubjects(studentId: studentId);
      if (response.status == true && response.data != null) {
        emit(ExamFilterSubjectsSuccess(response.data!));
      } else {
        emit(ExamFilterSubjectsError(response.message ?? "فشل في جلب المواد"));
      }
    } catch (e) {
      emit(ExamFilterSubjectsError("حدث خطأ أثناء جلب المواد"));
    }
  }
}
