import 'package:familyapp/features/exams/domain/models/exams_model.dart';
import 'package:equatable/equatable.dart';

abstract class ExamsState extends Equatable {
  const ExamsState();

  @override
  List<Object?> get props => [];
}

class ExamsInitial extends ExamsState {}

class ExamsLoading extends ExamsState {}

class ExamsSuccess extends ExamsState {
  final Map<int, Map<String, List<ExamModel>>> cachedExams;
  final int? currentStudentId;
  final String? currentDate;
  final bool isRefreshing;
  final bool isDayLoading;

  const ExamsSuccess({
    required this.cachedExams,
    this.currentStudentId,
    this.currentDate,
    this.isRefreshing = false,
    this.isDayLoading = false,
  });

  ExamsSuccess copyWith({
    Map<int, Map<String, List<ExamModel>>>? cachedExams,
    int? currentStudentId,
    String? currentDate,
    bool? isRefreshing,
    bool? isDayLoading,
  }) {
    return ExamsSuccess(
      cachedExams: cachedExams ?? this.cachedExams,
      currentStudentId: currentStudentId ?? this.currentStudentId,
      currentDate: currentDate ?? this.currentDate,
      isRefreshing: isRefreshing ?? this.isRefreshing,
      isDayLoading: isDayLoading ?? this.isDayLoading,
    );
  }

  @override
  List<Object?> get props => [cachedExams, currentStudentId, currentDate, isRefreshing, isDayLoading];

  Map<String, dynamic> toMap() {
    return {
      'cachedExams': cachedExams.map((k, v) => MapEntry(k.toString(), v.map((k2, v2) => MapEntry(k2, v2.map((e) => e.toJson()).toList())))),
      'currentStudentId': currentStudentId,
      'currentDate': currentDate,
    };
  }

  factory ExamsSuccess.fromMap(Map<String, dynamic> map) {
    return ExamsSuccess(
      cachedExams: (map['cachedExams'] as Map).map((k, v) => MapEntry(int.parse(k), (v as Map).map((k2, v2) => MapEntry(k2, (v2 as List).map((e) => ExamModel.fromJson(e)).toList())))),
      currentStudentId: map['currentStudentId'],
      currentDate: map['currentDate'],
    );
  }
}

class ExamsError extends ExamsState {
  final String message;
  const ExamsError(this.message);

  @override
  List<Object?> get props => [message];
}
