import 'package:cached_network_image/cached_network_image.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/exams/presentation/screens/exams_screen.dart';
import 'package:familyapp/features/notifications/presentation/screens/notifications_list_screen.dart';
import 'package:familyapp/features/qr_code/data/repo/qr_repository.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:familyapp/features/student/presentation/screens/exams_screen.dart';
import 'package:familyapp/features/student/presentation/screens/payments_screen.dart';
import 'package:familyapp/features/schedule/presentation/screens/schedule_screen.dart';
import 'package:familyapp/features/attendance/presentation/pages/attendance_screen.dart';

import 'package:familyapp/features/student/presentation/widget&&functions/animations_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_state.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_cubit.dart';
import 'package:familyapp/features/notifications/presentation/cubit/notifications_state.dart';
import 'package:familyapp/features/student/presentation/screens/student_profile_screen.dart';
import 'package:familyapp/features/qr_code/presentation/screens/show_qr_screen.dart';
import 'package:familyapp/features/qr_code/presentation/screens/scan_qr_screen.dart';
import 'package:familyapp/features/qr_code/presentation/cubit/qr_code_cubit.dart';
import 'package:familyapp/features/qr_code/presentation/cubit/qr_code_state.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyFunS {
  //************************************************************************************* */

  Widget exams(BuildContext context, ExamData? exams, int studentId) {
    final list = exams?.currentWeek ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            title("العلامات"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExamsScreen(
                      exams:
                          exams ??
                          const ExamData(currentWeek: [], lastWeek: []),
                      studentId: studentId,
                    ),
                  ),
                );
              },
              child: Text(
                'رؤية المزيد',
                style: TextStyle(
                  color: primary,
                  fontSize: 12.s,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),

        if (list.isEmpty)
          empty("لا يوجد مذاكرات حالياً")
        else
          ...list.map((e) {
            print("بيانات المذاكرة: ${e.toJson()}");
            return examCard(e);
          }),
      ],
    );
  }
  //************************************************************************************* */

  Widget examCard(ExamModel e) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: card(),
      child: Row(
        children: [
          SizedBox(width: 18.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                e.subject ?? 'اسم المادة',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.s,
                  color: black,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.calendar_month_outlined, size: 12.s, color: grey),
                  SizedBox(width: 5.w),
                  Text(
                    e.date != null
                        ? DateFormat(
                            'yyyy-MM-dd',
                          ).format(DateTime.parse(e.date!))
                        : '2024-01-01',
                    style: TextStyle(fontSize: 12.s, color: grey),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),

          e.isPassed == 1
              ? SvgPicture.asset('assets/svgs/top.svg')
              : SvgPicture.asset('assets/svgs/down.svg'),
          SizedBox(width: 10.w),
          Text(
            e.mark ?? '00',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.s,
              color: black,
            ),
          ),
        ],
      ),
    );
  }
  //************************************************************************************* */

  Widget payments(FinancialData? finance, BuildContext context) {
    final payments = List<PaymentItem>.from(finance?.payments ?? []);
    final contract = finance?.enrollmentContract;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            title("الدفعات"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentPaymentScreen(
                      financeData:
                          finance ??
                          const FinancialData(
                            payments: [],
                            pendingInstallments: [],
                          ),
                    ),
                  ),
                );
              },
              child: Text(
                'رؤية المزيد',
                style: TextStyle(
                  color: primary,
                  fontSize: 12.s,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        if (payments.isEmpty)
          empty("لا يوجد دفعات مسجلة")
        else
          Container(
            padding: const EdgeInsets.all(14),
            decoration: card(),
            child: Row(
              children: [
                Skeleton.keep(
                  child: CircleAvatar(
                    radius: 8.r,
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(width: 12.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "الدفعة رقم ${finance?.payments?.length ?? 0}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.s,
                        color: black,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 12.s,
                          color: grey,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          payments.isNotEmpty
                              ? (payments.last.paidDate ?? '2024-01-01')
                              : '2024-01-01',
                          style: TextStyle(fontSize: 12.s, color: grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$${payments.isNotEmpty ? (payments.last.amountUsd ?? 0) : 0}",
                      style: TextStyle(
                        fontSize: 12.s,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 6),
                    Text(
                      "\$${contract?.remainingAmountUsd ?? 0} المتبقي",
                      style: TextStyle(
                        fontSize: 12.s,
                        color: grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
  //************************************************************************************* */

  Widget title(String t) {
    return Text(
      t,
      style: TextStyle(fontSize: 16.s, fontWeight: FontWeight.w500),
    );
  }
  //************************************************************************************* */

  Widget empty(String t) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: card(),
      child: Center(
        child: Text(t, style: const TextStyle(color: Colors.grey)),
      ),
    );
  }
  //************************************************************************************* */

  BoxDecoration card() {
    return BoxDecoration(
      color: white,
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
    );
  }
  //************************************************************************************* */

  Widget chart(Map<String, dynamic>? evals) {
    return StudentChart(evals: evals);
  }
}

class StudentChart extends StatefulWidget {
  final Map<String, dynamic>? evals;
  const StudentChart({super.key, this.evals});

  @override
  State<StudentChart> createState() => _StudentChartState();
}

class _StudentChartState extends State<StudentChart> {
  String? selectedMonth;
  final List<String> displayMonths = [
    "آذار 2026",
    "نيسان 2026",
    "أيار 2026",
    "حزيران 2026",
    "تموز 2026",
    "آب 2026",
    "أيلول 2026",
    "تشرين الأول 2026",
    "تشرين الثاني 2026",
    "كانون الأول 2026",
    "كانون الثاني 2027",
    "شباط 2027",
  ];

  @override
  void initState() {
    super.initState();
    _setInitialSelection();
  }

  void _setInitialSelection() {
    final Map<String, dynamic> data = widget.evals ?? {};
    double maxVal = -1;
    String? maxMonth;

    for (var month in displayMonths) {
      double v = double.tryParse(data[month]?.toString() ?? '0') ?? 0;
      if (v > maxVal) {
        maxVal = v;
        maxMonth = month;
      }
    }
    selectedMonth = maxMonth;
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = widget.evals ?? {};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyFunS().title("تقييم الطالب"),
        SizedBox(height: 1.h),
        SizedBox(
          height: 200.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 55.h,
                left: 0,
                right: 0,
                child: Container(height: 1.h, color: const Color(0xffE6E6E6)),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: displayMonths.map((month) {
                  dynamic rawValue = data[month];
                  double v = double.tryParse(rawValue?.toString() ?? '0') ?? 0;
                  double h = (v / 100) * 120.h;
                  bool isSelected = selectedMonth == month;

                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMonth = month;
                        });
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            clipBehavior: Clip.none,
                            children: [
                              // Background Bar
                              Container(
                                height: 120.h,
                                margin: EdgeInsets.symmetric(horizontal: 4.w),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.15),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.r),
                                    topRight: Radius.circular(6.r),
                                  ),
                                ),
                              ),
                              // Progress Bar
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeOut,
                                height: (v == 0) ? 5.h : h.clamp(1.h, 120.h),
                                margin: EdgeInsets.symmetric(horizontal: 4.w),
                                decoration: BoxDecoration(
                                  gradient: (v == 0)
                                      ? null
                                      : LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [primary, primary1],
                                        ),
                                  color: (v == 0) ? primary : null,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.r),
                                    topRight: Radius.circular(6.r),
                                  ),
                                ),
                              ),
                              // Popup
                              if (isSelected)
                                Positioned(
                                  top: -45.h,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.w,
                                      vertical: 4.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.15),
                                          blurRadius: 10,
                                          offset: const Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "${v.toInt()}%",
                                      style: TextStyle(
                                        color: primary,
                                        fontSize: 12.s,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 45.h,
                            child: Text(
                              month,
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 10.s,
                                color: isSelected ? primary : Colors.black,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                height: 1.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
//************************************************************************************* */

Widget menu(
  BuildContext context,
  FinancialData? f,
  ExamData? e,
  int studentId,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        menuItem('علامات\n', 'assets/svgs/marks.svg', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExamsScreen(
                exams: e ?? const ExamData(currentWeek: [], lastWeek: []),
                studentId: studentId,
              ),
            ),
          );
        }),
        menuItemE('المذاكرات\n', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExamsScreenE(studentId: studentId),
            ),
          );
        }),
        menuItem('برنامج\nالدوام', 'assets/svgs/program.svg', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScheduleScreen(studentId: studentId),
            ),
          );
        }),
        menuItem('الدفعات\nالمالية', 'assets/svgs/finance.svg', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentPaymentScreen(
                financeData:
                    f ??
                    const FinancialData(payments: [], pendingInstallments: []),
              ),
            ),
          );
        }),
        menuItem('غياب/\nحضور', 'assets/svgs/gh.svg', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AttendanceScreen(studentId: studentId),
            ),
          );
        }),
      ],
    ),
  );
}

Widget menuItemE(String t, VoidCallback ontap) {
  return Column(
    children: [
      GestureDetector(
        onTap: ontap,
        child: Container(
          height: 40.h,
          width: 40.w,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
            ],
          ),
          child: Icon(Icons.edit_note_outlined, color: primary, size: 20.r),
        ),
      ),
      const SizedBox(height: 6),
      Text(
        t,
        style: TextStyle(
          fontSize: 10.s,
          fontWeight: FontWeight.w500,
          color: grey1,
        ),
      ),
    ],
  );
}
//************************************************************************************* */

Widget menuItem(String t, String url, VoidCallback ontap) {
  return Column(
    children: [
      GestureDetector(
        onTap: ontap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
            ],
          ),
          child: SvgPicture.asset(url),
        ),
      ),
      const SizedBox(height: 6),
      Text(
        t,
        style: TextStyle(
          fontSize: 10.s,
          fontWeight: FontWeight.w500,
          color: grey1,
        ),
      ),
    ],
  );
}
//************************************************************************************* */

Widget header(StudentData? profile, BuildContext context) {
  bool isAttended = profile?.latestAttendance?.status == 'present' ?? false;
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentProfileScreen(
                name: profile?.fullName ?? '',
                imageUrl: (profile?.profilePhoto?.startsWith('http') ?? false)
                    ? profile!.profilePhoto!
                    : "$baseUrl${profile?.profilePhoto?.startsWith('/') == true ? "" : "/"}${profile?.profilePhoto ?? ""}",
                branch: profile?.branch?.name ?? '',
              ),
            ),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: secondary,
              child: ClipOval(
                child: profile?.profilePhoto != null
                    ? CachedNetworkImage(
                        imageUrl:
                            (profile?.profilePhoto?.startsWith('http') ?? false)
                            ? profile!.profilePhoto!
                            : "$baseUrl${profile?.profilePhoto?.startsWith('/') == true ? "" : "/"}${profile?.profilePhoto ?? ""}",
                        placeholder: (context, url) => const Skeleton.keep(
                          child: Center(
                            child: CircularProgressIndicator(strokeWidth: 1),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.person, color: primary),
                        fit: BoxFit.cover,
                        width: 56,
                        height: 56,
                      )
                    : const Icon(Icons.person, color: primary),
              ),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile?.fullName ?? 'اسم الطالب الوهمي',
                  style: TextStyle(
                    color: grey1,
                    fontSize: 14.s,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  profile?.branch?.name ?? 'اسم الفرع التعليمي',
                  style: TextStyle(
                    fontSize: 10.s,
                    color: grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      const Spacer(),
      SizedBox(width: 10.w),
      RipplingAttendancePoint(isAttended: isAttended),
      SizedBox(width: 10.w),
      BlocBuilder<AuthCubit, AuthState>(
        builder: (context, authState) {
          bool isStudent = false;
          if (authState is AuthSuccess) {
            isStudent = authState.authResponse.data?.user.type == 'student';
          }

          if (!isStudent) return const SizedBox.shrink();

          return BlocBuilder<NotificationsCubit, NotificationsState>(
            builder: (context, state) {
              int unreadCount = 0;
              if (state is NotificationsSuccess) {
                unreadCount = state.unreadCount;
              }
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                      color: black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationScreen(),
                        ),
                      );
                    },
                  ),
                  if (unreadCount > 0)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1.5),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 16.s,
                          minHeight: 16.s,
                        ),
                        child: Center(
                          child: Text(
                            unreadCount > 99 ? '99+' : unreadCount.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.s,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajwal',
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          );
        },
      ),

      //RipplingAttendancePoint(isAttended: isAttended),
    ],
  );
}

//************************************************************************************* */

Widget qrButton(
  StudentData profile,
  BuildContext context, {
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(10.s),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [primary, primary.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: primary.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Icon(Icons.qr_code_2, color: white, size: 40.s),
    ),
  );
}

class TooltipShape extends ShapeBorder {
  final double arrowWidth;
  final double arrowHeight;
  final double borderRadius;

  const TooltipShape({
    this.arrowWidth = 15.0,
    this.arrowHeight = 10.0,
    this.borderRadius = 15.0,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: arrowHeight);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(borderRadius)));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Rect mainRect = Rect.fromLTRB(
      rect.left,
      rect.top,
      rect.right,
      rect.bottom - arrowHeight,
    );

    final Path path = Path();
    path.addRRect(
      RRect.fromRectAndRadius(mainRect, Radius.circular(borderRadius)),
    );

    final double centerX = mainRect.center.dx;
    path.moveTo(centerX - arrowWidth / 2, mainRect.bottom);
    path.lineTo(centerX, mainRect.bottom + arrowHeight);
    path.lineTo(centerX + arrowWidth / 2, mainRect.bottom);
    path.close();

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => TooltipShape(
    arrowWidth: arrowWidth * t,
    arrowHeight: arrowHeight * t,
    borderRadius: borderRadius * t,
  );
}
