import 'package:familyapp/features/student/domain/models/student_models.dart';

abstract class StudentState {}

class StudentInitial extends StudentState {}

class StudentLoading extends StudentState {}

class StudentSuccess extends StudentState {
  final Map<int, StudentDataContainer> cachedStudents;
  final int currentStudentId;

  StudentSuccess({
    required this.cachedStudents,
    required this.currentStudentId,
  });

  StudentDataContainer? get currentData => cachedStudents[currentStudentId];

  Map<String, dynamic> toMap() {
    return {
      'currentStudentId': currentStudentId,
      'cachedStudents': cachedStudents.map(
        (key, value) => MapEntry(key.toString(), value.toMap()),
      ),
    };
  }

  factory StudentSuccess.fromMap(Map<String, dynamic> map) {
    return StudentSuccess(
      currentStudentId: map['currentStudentId'] as int,
      cachedStudents: (map['cachedStudents'] as Map).map(
        (key, value) => MapEntry(
          int.parse(key),
          StudentDataContainer.fromMap(value as Map<String, dynamic>),
        ),
      ),
    );
  }
}

class StudentDataContainer {
  final StudentProfileResponse profile;
  final MonthlyEvaluationResponse evaluations;
  final FinancialSummaryResponse finance;
  final ExamResponse exams;

  StudentDataContainer({
    required this.profile,
    required this.evaluations,
    required this.finance,
    required this.exams,
  });

  Map<String, dynamic> toMap() => {
    'profile': profile.toJson(),
    'evaluations': evaluations.toJson(),
    'finance': finance.toJson(),
    'exams': exams.toJson(),
  };

  factory StudentDataContainer.fromMap(Map<String, dynamic> map) =>
      StudentDataContainer(
        profile: StudentProfileResponse.fromJson(map['profile']),
        evaluations: MonthlyEvaluationResponse.fromJson(map['evaluations']),
        finance: FinancialSummaryResponse.fromJson(map['finance']),
        exams: ExamResponse.fromJson(map['exams']),
      );
}

class StudentError extends StudentState {
  final String message;
  StudentError(this.message);
}
