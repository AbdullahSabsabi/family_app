import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/attendance/presentation/cubit/attendance_cubit.dart';
import 'package:familyapp/features/attendance/presentation/cubit/attendance_state.dart';
import 'package:familyapp/features/attendance/presentation/widgets/attendance_card.dart';
import 'package:familyapp/features/attendance/presentation/pages/attendance_filtered_screen.dart';

class AttendanceScreen extends StatefulWidget {
  final int studentId;

  const AttendanceScreen({super.key, required this.studentId});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AttendanceCubit>().getAttendance(studentId: widget.studentId);
  }

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    return Scaffold(
      backgroundColor: scaffoldc,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [secondary1.withValues(alpha: 0.3), scaffoldc],
            stops: const [0.0, 0.4],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.w,
                      vertical: 30.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 20.s,
                                color: black,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'غياب/حضور',
                              style: TextStyle(
                                fontSize: 18.s,
                                fontWeight: FontWeight.w500,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'يمكنك الاطلاع على غياب/حضور الطالب\nفي أي وقت',
                          style: TextStyle(
                            color: grey,
                            fontSize: 14.s,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 231, 231, 231),
                    thickness: 3,
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AttendanceFilteredScreen(
                          studentId: widget.studentId,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الأسبوع الحالي',
                        style: TextStyle(
                          fontSize: 16.s,
                          fontWeight: FontWeight.w500,
                          color: black,
                        ),
                      ),
                      Icon(
                        Icons.calendar_today_outlined,
                        color: black,
                        size: 16.s,
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: BlocBuilder<AttendanceCubit, AttendanceState>(
                  builder: (context, state) {
                    if (state is AttendanceLoading) {
                      return const Center(
                        child: CircularProgressIndicator(color: primary),
                      );
                    } else if (state is AttendanceError) {
                      return Center(child: Text(state.message));
                    } else if (state is AttendanceSuccess) {
                      final records = state.currentAttendance?.records ?? [];
                      if (records.isEmpty) {

                        return const Center(child: Text('لا يوجد سجلات حضور'));
                      }
                      return RefreshIndicator(
                        color: primary,
                        onRefresh: () => context
                            .read<AttendanceCubit>()
                            .getAttendance(studentId: widget.studentId),
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          itemCount: records.length,
                          itemBuilder: (context, index) {
                            return AttendanceCard(record: records[index]);
                          },
                        ),
                      );
                    }

                    return const SizedBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
