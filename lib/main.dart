import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:familyapp/core/helper/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:familyapp/family_app.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();

    final storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        (await getApplicationDocumentsDirectory()).path,
      ),
    );
    HydratedBloc.storage = storage;

    await setupGetIt();

    _initServicesInBackground();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );

    runApp(const FamilyApp());
  } catch (e, stack) {
    debugPrint("CRITICAL INITIALIZATION ERROR: $e");
    debugPrint(stack.toString());

    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  "حدث خطأ أثناء تشغيل التطبيق:\n$e",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _initServicesInBackground() async {
  try {
    await getIt<NotificationService>().initialize();

    await getIt<AuthCubit>().checkAuth();
  } catch (e) {
    debugPrint("Background Initialization Error: $e");
  }
}
