import 'package:cached_network_image/cached_network_image.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:familyapp/features/student/presentation/screens/exams_screen.dart';
import 'package:familyapp/features/student/presentation/screens/payments_screen.dart';
import 'package:familyapp/features/schedule/presentation/screens/schedule_screen.dart';
import 'package:familyapp/features/student/presentation/widget&&functions/animations_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
                    builder: (context) => ExamsScreen(exams: exams!, studentId: studentId),
                  ),
                );
              },
              child: Text(
                'رؤية المزيد',
                style: TextStyle(
                  color: primary,
                  fontSize: 10.s,
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
                    builder: (context) =>
                        StudentPaymentScreen(financeData: finance!),
                  ),
                );
              },
              child: Text(
                'رؤية المزيد',
                style: TextStyle(
                  color: primary,
                  fontSize: 10.s,
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
                          payments.last.paidDate ?? '2024-01-01',
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
                      "\$${payments.last.amountUsd ?? 0}",
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

    final Map<String, dynamic> data = evals ?? {};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title("تقييم الطالب"),
        SizedBox(height: 1.h),
        SizedBox(
          height: 180.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 55.h,
                left: 0,
                right: 0,
                child: Container(height: 1.h, color: Color(0xffE6E6E6)),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: displayMonths.map((month) {
                  dynamic rawValue = data[month];
                  double v = double.tryParse(rawValue?.toString() ?? '0') ?? 0;
                  double h = (v / 100) * 120.h;

                  return Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 120.h,
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6.r),
                                  topRight: Radius.circular(6.r),
                                ),
                              ),
                            ),
                            Container(
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
                              color: Colors.black,
                              height: 1.1,
                            ),
                          ),
                        ),
                      ],
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
  //************************************************************************************* */

  Widget menu(BuildContext context, FinancialData? f, ExamData? e, int studentId) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          menuItem('علامات\n', 'assets/svgs/marks.svg', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExamsScreen(exams: e!, studentId: studentId)),
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
                builder: (context) => StudentPaymentScreen(financeData: f!),
              ),
            );
          }),
          menuItem('غياب/\nحضور', 'assets/svgs/gh.svg', () {}),
        ],
      ),
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

  Widget header(StudentData? profile) {
    bool isAttended = profile!.latestAttendance?.status == 'present' ?? false;
    return Row(
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundColor: secondary,
          child: ClipOval(
            child: profile?.profilePhoto != null
                ? CachedNetworkImage(
                    imageUrl: (profile!.profilePhoto!.startsWith('http'))
                        ? profile!.profilePhoto!
                        : "$baseUrl${profile!.profilePhoto!.startsWith('/') ? "" : "/"}${profile!.profilePhoto!}",
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
        const Spacer(),

        RipplingAttendancePoint(isAttended: isAttended),
      ],
    );
  }

  //************************************************************************************* */
}
