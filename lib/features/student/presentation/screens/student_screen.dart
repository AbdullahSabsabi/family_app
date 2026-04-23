import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/student/presentation/cubit/student_cubit.dart';
import 'package:familyapp/features/student/presentation/cubit/student_state.dart';
import 'package:familyapp/features/student/presentation/widget&&functions/fun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class StudentScreen extends StatefulWidget {
  final dynamic id;
  const StudentScreen({super.key, required this.id});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    context.read<StudentCubit>().getStudentDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [secondary1.withOpacity(0.1), scaffoldc],
            stops: [0.0, 0.4],
          ),
        ),
        child: BlocBuilder<StudentCubit, StudentState>(
          builder: (context, state) {
            if (state is StudentError && state is! StudentSuccess) {
              return Center(child: Text(state.message));
            }

            // Fix: isLoading should be true if it's the first time (Initial) or actually loading
            bool isLoading = state is StudentLoading || state is StudentInitial;

            StudentDataContainer? currentStudentData;

            if (state is StudentSuccess) {
              currentStudentData = state.cachedStudents[widget.id];
            }

            // If we are in Success but the specific student isn't in cache yet, it's still loading for that student
            if (state is StudentSuccess && currentStudentData == null) {
              isLoading = true;
            }

            final profile = currentStudentData?.profile.data;
            final evaluations =
                currentStudentData?.evaluations.data?.evaluations ?? {};
            final finance = currentStudentData?.finance.data;
            final exams = currentStudentData?.exams.data;

            return Stack(
              children: [
                Skeletonizer(
                  enabled: isLoading,
                  //&& currentStudentData == null,
                  child: RefreshIndicator(
                    onRefresh: () async => _loadData(),
                    color: primary,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60.h),

                          MyFunS().header(profile),
                          SizedBox(height: 50.h),
                          MyFunS().menu(context, finance, exams, widget.id),
                          SizedBox(height: 30.h),
                          MyFunS().chart(evaluations),
                          SizedBox(height: 10.h),
                          MyFunS().payments(finance, context),
                          SizedBox(height: 20.h),
                          MyFunS().exams(context, exams, widget.id),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
                if (isLoading && currentStudentData != null)
                  Positioned(
                    top: 50.h,
                    left: 20.w,
                    child: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: primary,
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
