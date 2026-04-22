import 'dart:async';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:familyapp/auth_wrapper.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/family/presentation/cubit/family_cubit.dart';
import 'package:familyapp/features/student/presentation/cubit/student_cubit.dart';

class FamilyApp extends StatefulWidget {
  const FamilyApp({super.key});

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
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontFamily: 'Tajwal',
          ),
        ),
        backgroundColor: primary,
        leading: Icon(
          isOnline ? Icons.wifi : Icons.wifi_off,
          color: Colors.white,
        ),
        actions: [
          TextButton(
            onPressed: () =>
                _messengerKey.currentState?.hideCurrentMaterialBanner(),
            child: const Text(
              "إغلاق",
              style: TextStyle(color: Colors.white, fontFamily: 'Tajwal'),
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
      ],
      child: MaterialApp(
        scaffoldMessengerKey: _messengerKey,
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
        home: const AuthWrapper(),
      ),
    );
  }
}
