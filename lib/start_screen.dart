import 'dart:ui';

import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/core/widgets/double_back_to_exit.dart';
import 'package:familyapp/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return DoubleBackToExit(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/splash.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x001A1A1A),
                        Color(0x801A1A1A),
                        Color(0xff1A1A1A),
                      ],
                      stops: [0.0, 0.8, 1.5],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 350.h),
                    Text(
                      'العلماء للتعليم طريقك للنجاح',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.s,
                        color: white,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'كل ما تحتاجه في دراستك بين يديك!',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.s,
                        color: white,
                      ),
                    ),
                    Text(
                      'تابع جداولك, حضورك, ونتائجك الأكاديمية',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.s,
                        color: white,
                      ),
                    ),
                    Text(
                      'بسهولة وفي أي وقت.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.s,
                        color: white,
                      ),
                    ),
                    SizedBox(height: 50.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(72.r),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                          child: Container(
                            height: 50.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(72.r),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.4),
                                width: 1.5.w,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'التالي',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.s,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tajwal',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //SizedBox(height: 30.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
