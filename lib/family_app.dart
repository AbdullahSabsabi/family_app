import 'dart:async';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/attendance/presentation/cubit/attendance_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/family/presentation/cubit/family_cubit.dart';
import 'package:familyapp/features/student/presentation/cubit/student_cubit.dart';
import 'package:familyapp/features/schedule/presentation/cubit/schedule_cubit.dart';
import 'package:familyapp/features/exams/presentation/cubit/exams_cubit.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_cubit.dart';
import 'package:familyapp/features/qr_code/presentation/cubit/qr_code_cubit.dart';
import 'package:familyapp/splash_screen.dart';

class FamilyApp extends StatefulWidget {
  const FamilyApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  State<FamilyApp> createState() => _FamilyAppState();
}

class _FamilyAppState extends State<FamilyApp> {
  late StreamSubscription<InternetStatus> _subscription;
  final GlobalKey<ScaffoldMessengerState> _messengerKey =
      GlobalKey<ScaffoldMessengerState>();
  bool _isFirstCheck = true;

  @override
  void initState() {
    super.initState();
    _subscription = InternetConnection().onStatusChange.listen((status) {
      _handleInternetChange(status);
    });
  }

  void _handleInternetChange(InternetStatus status) {
    final isOnline = status == InternetStatus.connected;

    if (_isFirstCheck) {
      _isFirstCheck = false;
      if (isOnline) return;
    }

    _messengerKey.currentState?.hideCurrentMaterialBanner();
    _messengerKey.currentState?.showMaterialBanner(
      MaterialBanner(
        content: Text(
          isOnline
              ? "تم استعادة الاتصال بالإنترنت"
              : "لا يوجد اتصال بالإنترنت - يتم عرض البيانات المخزنة",
          style: TextStyle(color: white, fontSize: 13.s, fontFamily: 'Tajwal'),
        ),
        backgroundColor: primary,
        leading: Icon(isOnline ? Icons.wifi : Icons.wifi_off, color: white),
        actions: [
          TextButton(
            onPressed: () =>
                _messengerKey.currentState?.hideCurrentMaterialBanner(),
            child: Text(
              "إغلاق",
              style: TextStyle(color: white, fontFamily: 'Tajwal'),
            ),
          ),
        ],
      ),
    );

    if (isOnline) {
      Future.delayed(const Duration(seconds: 3), () {
        _messengerKey.currentState?.hideCurrentMaterialBanner();
      });
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>.value(value: getIt<AuthCubit>()),
        BlocProvider<GuardianDashboardCubit>(
          create: (context) => getIt<GuardianDashboardCubit>(),
        ),
        BlocProvider<StudentCubit>(create: (context) => getIt<StudentCubit>()),
        BlocProvider<ScheduleCubit>(
          create: (context) => getIt<ScheduleCubit>(),
        ),
        BlocProvider<AttendanceCubit>(
          create: (context) => getIt<AttendanceCubit>(),
        ),
        BlocProvider<ExamsCubit>(create: (context) => getIt<ExamsCubit>()),
        BlocProvider<NotificationsCubit>(
          create: (context) => getIt<NotificationsCubit>(),
        ),
        BlocProvider<QrCodeCubit>(create: (context) => getIt<QrCodeCubit>()),
      ],

      child: MaterialApp(
        title: 'olamaa',
        scaffoldMessengerKey: _messengerKey,
        navigatorKey: FamilyApp.navigatorKey,

        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Tajwal',
          primaryColor: primary,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
