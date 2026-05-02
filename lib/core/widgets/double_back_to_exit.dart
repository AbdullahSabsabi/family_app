import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoubleBackToExit extends StatefulWidget {
  final Widget child;

  const DoubleBackToExit({super.key, required this.child});

  @override
  State<DoubleBackToExit> createState() => _DoubleBackToExitState();
}

class _DoubleBackToExitState extends State<DoubleBackToExit> {
  DateTime? _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        final NavigatorState navigator = Navigator.of(context);
        if (navigator.canPop()) {
          navigator.pop();
          return;
        }

        _showExitDialog(context);
      },
      child: widget.child,
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: white,
        surfaceTintColor: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        title: Text(
          'تأكيد الخروج',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: black,
            fontSize: 18.s,
            fontWeight: FontWeight.bold,
            fontFamily: 'Tajwal',
          ),
        ),
        content: Text(
          'هل أنت متأكد من رغبتك في الخروج من التطبيق؟',
          textAlign: TextAlign.center,
          style: TextStyle(color: grey2, fontSize: 14.s, fontFamily: 'Tajwal'),
        ),
        actionsPadding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          bottom: 25.h,
          top: 10.h,
        ),
        actions: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      color: scaffoldc,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: grey3),
                    ),
                    child: Center(
                      child: Text(
                        'رجوع',
                        style: TextStyle(
                          color: grey1,
                          fontSize: 14.s,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajwal',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: InkWell(
                  onTap: () => SystemNavigator.pop(),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'تأكيد',
                        style: TextStyle(
                          color: white,
                          fontSize: 14.s,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajwal',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
