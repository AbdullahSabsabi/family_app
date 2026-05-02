import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:familyapp/core/helper/notification_service.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_state.dart';
import 'package:familyapp/features/auth/presentation/screens/change_password_screen.dart';
import 'package:familyapp/features/family/presentation/screens/family_screen.dart';
import 'package:familyapp/features/student/presentation/screens/student_screen.dart';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _uniqueIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<Map<String, dynamic>> _getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    Map<String, dynamic> info = {};

    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        info = {
          'model': androidInfo.model,
          'brand': androidInfo.brand,
          'version': androidInfo.version.release,
          'sdk': androidInfo.version.sdkInt,
          'manufacturer': androidInfo.manufacturer,
          'isPhysicalDevice': androidInfo.isPhysicalDevice,
        };
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        info = {
          'model': iosInfo.model,
          'name': iosInfo.name,
          'version': iosInfo.systemVersion,
          'isPhysicalDevice': iosInfo.isPhysicalDevice,
        };
      }
    } catch (e) {
      print('Error getting device info: $e');
    }
    return info;
  }

  @override
  void dispose() {
    _uniqueIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isCheck = false;
  bool _obscurePassword = true;


  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [secondary1.withOpacity(0.3), scaffoldc],
            stops: [0.0, 0.4],
          ),
        ),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              if (state.authResponse.message ==
                  "يجب تغيير كلمة المرور قبل المتابعة.") {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.authResponse.message),
                    backgroundColor: primary,
                  ),
                );
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangePasswordScreen(),
                  ),
                  (route) => false,
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.authResponse.message),
                    backgroundColor: primary,
                  ),
                );

                final userType = state.authResponse.data?.user.type;

                if (userType == 'family') {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FamilyScreen(),
                    ),
                    (route) => false,
                  );
                } else if (userType == 'student') {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentScreen(
                        id: state.authResponse.data!.user.relatedId,
                      ),
                    ),
                    (route) => false,
                  );
                } else {
                  print("Unknown user type: $userType");
                }
              }
            } else if (state is AuthError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: primary,
                ),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 260.h,
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                      ),
                      Positioned(
                        top: 30.h,
                        left: 0,
                        right: 20.w,
                        child: Column(
                          children: [
                            ClipRect(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                heightFactor: 0.45.h,
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 400.w,
                                  height: 400.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'معهد العلماء للتعليم',
                    style: TextStyle(
                      color: primary,
                      fontSize: 20.s,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 75.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 53.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontSize: 24.s,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        buildLabel('اسم المستخدم'),
                        buildTextField(
                          'الاسم',
                          controller: _uniqueIdController,
                        ),
                        SizedBox(height: 20.h),
                        buildLabel('كلمة السر'),
                        buildTextField(
                          'كلمة السر',
                          isPassword: true,
                          obscureText: _obscurePassword,
                          onToggleVisibility: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          controller: _passwordController,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Checkbox(
                              activeColor: primary,
                              value: isCheck,
                              onChanged: (val) {
                                setState(() {
                                  isCheck = val!;
                                });
                              },
                              side: const BorderSide(color: grey),
                            ),
                            Text(
                              'نسيت كلمة المرور',
                              style: TextStyle(
                                color: grey,
                                fontSize: 12.s,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        SizedBox(
                          width: double.infinity,
                          height: 40.h,
                          child: ElevatedButton(
                            onPressed: state is AuthLoading
                                ? null
                                : () async {
                                    final fcmToken = await getIt<NotificationService>().getFCMToken();
                                    final deviceInfo = await _getDeviceInfo();
                                    await context.read<AuthCubit>().login(
                                      uniqueId: _uniqueIdController.text.trim(),
                                      password: _passwordController.text,
                                      fcmToken: fcmToken,
                                      deviceInfo: deviceInfo,
                                    );
                                  },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [primary, primary1],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40.h,
                                alignment: Alignment.center,
                                child: state is AuthLoading
                                    ? SizedBox(
                                        height: 20.h,
                                        width: 20.h,
                                        child: const CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : Text(
                                        'تسجيل الدخول',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.s,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildLabel(String label) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16.s,
            fontWeight: FontWeight.w500,
            color: black,
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
    String hint, {
    bool isPassword = false,
    bool obscureText = true,
    VoidCallback? onToggleVisibility,
    required TextEditingController controller,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: grey, width: 1.5),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword ? obscureText : false,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: grey, fontSize: 12.s),
          contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
          border: InputBorder.none,
          prefixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: grey,
                    size: 20.s,
                  ),
                  onPressed: onToggleVisibility,
                )
              : null,
        ),
      ),
    );
  }
}
