import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_state.dart';
import 'package:familyapp/features/auth/presentation/screens/login_screen.dart';
import 'package:familyapp/features/auth/presentation/widgets&&functions/fun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureOld = true;
  bool _obscureNew = true;
  bool _obscureConfirm = true;


  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
            if (state is ChangePasswordSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.message,
                    style: const TextStyle(fontFamily: 'Tajwal'),
                  ),
                  backgroundColor: primary,
                ),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            } else if (state is ChangePasswordError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.message,
                    style: const TextStyle(fontFamily: 'Tajwal'),
                  ),
                  backgroundColor: primary,
                ),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
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
                              'تغيير كلمة المرور',
                              style: TextStyle(
                                fontSize: 24.s,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),

                          MyFunL().buildLabel('كلمة المرور القديمة'),
                          MyFunL().buildTextField(
                            'أدخل كلمة المرور الحالية',
                            isPassword: true,
                            obscureText: _obscureOld,
                            onToggleVisibility: () {
                              setState(() {
                                _obscureOld = !_obscureOld;
                              });
                            },
                            controller: _oldPasswordController,
                          ),

                          SizedBox(height: 20.h),

                          MyFunL().buildLabel('كلمة المرور الجديدة'),
                          MyFunL().buildTextField(
                            'أدخل كلمة المرور الجديدة',
                            isPassword: true,
                            obscureText: _obscureNew,
                            onToggleVisibility: () {
                              setState(() {
                                _obscureNew = !_obscureNew;
                              });
                            },
                            controller: _newPasswordController,
                          ),

                          SizedBox(height: 20.h),

                          MyFunL().buildLabel('تأكيد كلمة المرور'),
                          MyFunL().buildTextField(
                            'أعد كتابة كلمة المرور الجديدة',
                            isPassword: true,
                            obscureText: _obscureConfirm,
                            onToggleVisibility: () {
                              setState(() {
                                _obscureConfirm = !_obscureConfirm;
                              });
                            },
                            controller: _confirmPasswordController,
                          ),


                          SizedBox(height: 30.h),

                          SizedBox(
                            width: double.infinity,
                            height: 40.h,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [primary, primary1],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: ElevatedButton(
                                onPressed: state is ChangePasswordLoading
                                    ? null
                                    : () {
                                        if (_oldPasswordController.text ==
                                            _newPasswordController.text) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'كلمة المرور الجديدة يجب أن تكون مختلفة عن القديمة',
                                                style: TextStyle(
                                                    fontFamily: 'Tajwal'),
                                              ),
                                              backgroundColor: primary,
                                            ),
                                          );
                                          return;
                                        }

                                        if (_newPasswordController.text.length <
                                            8) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'كلمة المرور الجديدة يجب أن تكون 8 محارف على الأقل',
                                                style: TextStyle(
                                                    fontFamily: 'Tajwal'),
                                              ),
                                              backgroundColor: primary,
                                            ),
                                          );
                                          return;
                                        }

                                        if (_newPasswordController.text !=
                                            _confirmPasswordController.text) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'كلمات المرور الجديدة غير متطابقة',
                                                style: TextStyle(
                                                    fontFamily: 'Tajwal'),
                                              ),
                                              backgroundColor: primary,
                                            ),
                                          );
                                          return;
                                        }

                                        context
                                            .read<AuthCubit>()
                                            .changePassword(
                                              currentPassword:
                                                  _oldPasswordController.text,
                                              newPassword:
                                                  _newPasswordController.text,
                                              confirmPassword:
                                                  _confirmPasswordController
                                                      .text,
                                            );
                                      },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                                child: state is ChangePasswordLoading
                                    ? SizedBox(
                                        height: 20.h,
                                        width: 20.h,
                                        child: const CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : Text(
                                        'تحديث كلمة المرور',
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 18.s,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
