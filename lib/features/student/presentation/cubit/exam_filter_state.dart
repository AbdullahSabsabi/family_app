import 'package:familyapp/features/student/domain/models/student_models.dart';

abstract class ExamFilterState {}

class ExamFilterInitial extends ExamFilterState {}

class ExamFilterLoading extends ExamFilterState {}

class ExamFilterSuccess extends ExamFilterState {
  final FilteredExamResponse response;
  ExamFilterSuccess(this.response);
}

class ExamFilterError extends ExamFilterState {
  final String message;
  ExamFilterError(this.message);
}

class ExamFilterSubjectsLoading extends ExamFilterState {}

class ExamFilterSubjectsSuccess extends ExamFilterState {
  final List<EnrolledSubjectModel> subjects;
  ExamFilterSubjectsSuccess(this.subjects);
}

class ExamFilterSubjectsError extends ExamFilterState {
  final String message;
  ExamFilterSubjectsError(this.message);
}
