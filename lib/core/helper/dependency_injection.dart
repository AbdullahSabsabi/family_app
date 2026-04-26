import 'package:get_it/get_it.dart';
import 'package:familyapp/core/helper/dio_factory.dart';
import 'package:familyapp/features/auth/data/datasources/auth_datasources.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/family/data/datasources/family_datasources.dart';
import 'package:familyapp/features/family/presentation/cubit/family_cubit.dart';
import 'package:familyapp/features/student/data/datasources/student_datasources.dart';
import 'package:familyapp/features/student/presentation/cubit/student_cubit.dart';
import 'package:familyapp/features/student/presentation/cubit/exam_filter_cubit.dart';
import 'package:familyapp/features/schedule/presentation/cubit/schedule_cubit.dart';
import 'package:familyapp/features/schedule/data/repo/schedule_repo.dart';
import 'package:familyapp/features/schedule/data/datasources/schedule_repo_impl.dart';
import 'package:familyapp/features/attendance/data/repo/attendance_repo.dart';
import 'package:familyapp/features/attendance/data/datasources/attendance_repo_impl.dart';
import 'package:familyapp/features/attendance/presentation/cubit/attendance_cubit.dart';
import 'package:familyapp/features/exams/data/repo/exams_repository.dart';
import 'package:familyapp/features/exams/data/datasources/exams_repository_impl.dart';
import 'package:familyapp/features/exams/presentation/cubit/exams_cubit.dart';
import 'package:familyapp/core/helper/notification_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());
  getIt.registerLazySingleton<NotificationService>(() => NotificationService());
  final dioFactory = DioFactory();
  final dio = await dioFactory.getDio();
  getIt.registerLazySingleton(() => dio);

  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(getIt()),
  );

  getIt.registerLazySingleton<GuardianRemoteDataSource>(
    () => GuardianRemoteDataSource(getIt()),
  );

  getIt.registerLazySingleton<StudentRepositoryImpl>(
    () => StudentRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton<ScheduleRepository>(
    () => ScheduleRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton<AttendanceRepository>(
    () => AttendanceRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton<ExamsRepository>(
    () => ExamsRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton(() => AuthCubit(getIt<AuthRemoteDataSource>()));

  getIt.registerFactory(
    () => GuardianDashboardCubit(getIt<GuardianRemoteDataSource>()),
  );

  getIt.registerFactory(() => StudentCubit(getIt<StudentRepositoryImpl>()));
  getIt.registerFactory(() => ExamFilterCubit(getIt<StudentRepositoryImpl>()));
  getIt.registerFactory(() => ScheduleCubit(getIt<ScheduleRepository>()));
  getIt.registerFactory(() => AttendanceCubit(getIt<AttendanceRepository>()));
  getIt.registerFactory(() => ExamsCubit(getIt<ExamsRepository>()));
}
