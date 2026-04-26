import 'dart:ui';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/family/presentation/cubit/family_cubit.dart';
import 'package:familyapp/features/family/presentation/cubit/family_state.dart';
import 'package:familyapp/features/family/presentation/widgets/fun.dart';
import 'package:familyapp/features/family/presentation/widgets/student_class.dart';
import 'package:familyapp/features/student/presentation/screens/student_screen.dart';
import 'package:familyapp/family_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({super.key});

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    context.read<GuardianDashboardCubit>().getDashboardData();
  }

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return DoubleBackToExit(
      child: Scaffold(
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
          child: RefreshIndicator(
            onRefresh: () async {
              loadData();
            },
            color: primary,
            child: BlocBuilder<GuardianDashboardCubit, GuardianDashboardState>(
              builder: (context, state) {
                bool isLoading = state is GuardianDashboardLoading;

                if (state is GuardianDashboardError &&
                    state.message.isNotEmpty) {}

                final data = (state is GuardianDashboardSuccess)
                    ? state.data.data
                    : null;

                return Skeletonizer(
                  enabled: isLoading,
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 37.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 60.h),
                                Row(
                                  children: [
                                    MyFunF().buildUserAvatar(
                                      data?.guardian.photoUrl,
                                    ),
                                    SizedBox(width: 15.w),
                                    Expanded(
                                      child: Text(
                                        data?.guardian.name ??
                                            'أهلاً بكم في معهد العلماء للتعليم',
                                        style: TextStyle(
                                          fontSize: 14.s,
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Tajwal',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 50.h),

                                Text(
                                  '${data?.financialSummary.totalRequiredUsd ?? "000.00"}\$',
                                  style: TextStyle(
                                    fontSize: 32.s,
                                    fontWeight: FontWeight.w500,
                                    color: black,
                                    fontFamily: 'Tajwal',
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  '\$إجمالي المبلغ المدفوع للطلاب ${data?.financialSummary.totalPaidUsd ?? "000.00"}',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 14.s,
                                    fontWeight: FontWeight.w500,
                                    color: grey2,
                                    fontFamily: 'Tajwal',
                                  ),
                                ),

                                SizedBox(height: 30.h),

                                MyFunF().buildAmountRow(
                                  '${data?.financialSummary.totalRemainingUsd ?? "000.00"}\$',
                                  'المتبقي',
                                ),

                                SizedBox(height: 20.h),

                                MyFunF().buildProgressBar(
                                  data?.financialSummary.paymentPercentage ?? 0,
                                ),

                                SizedBox(height: 70.h),

                                Text(
                                  '  اختر أحد الأبناء لتتبع حالته',
                                  style: TextStyle(
                                    fontSize: 18.s,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Tajwal',
                                  ),
                                ),
                                SizedBox(height: 20.h),

                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    DynamicStudentScroll(
                                      students: isLoading
                                          ? List.generate(
                                              3,
                                              (index) => Student(
                                                id: 0,
                                                name: 'اسم الطالب هنا',
                                                imageUrl: '',
                                                color: Colors.grey,
                                              ),
                                            )
                                          : data!.children.asMap().entries.map((
                                              entry,
                                            ) {
                                              int index = entry.key;
                                              var child = entry.value;

                                              return Student(
                                                id: child.id,
                                                name: child.fullName,
                                                imageUrl: child.photoUrl ?? '',
                                                color:
                                                    cardColors[index %
                                                        cardColors.length],
                                              );
                                            }).toList(),
                                      onStudentTap: (studentId) {
                                        if (!isLoading) {
                                          print(
                                            "Navigate to student: $studentId",
                                          );
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  StudentScreen(id: studentId),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Positioned(
                                      top: 250.h,
                                      left: 0,
                                      right: 0,
                                      child: Center(
                                        child: MyFunF()
                                            .buildActionArrowWithBlur(),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 50.h),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
