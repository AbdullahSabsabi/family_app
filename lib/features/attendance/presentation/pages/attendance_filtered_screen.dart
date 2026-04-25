import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/attendance/presentation/cubit/attendance_cubit.dart';
import 'package:familyapp/features/attendance/presentation/cubit/attendance_state.dart';
import 'package:familyapp/features/attendance/presentation/widgets/attendance_card.dart';
import 'package:intl/intl.dart';

class AttendanceFilteredScreen extends StatefulWidget {
  final int studentId;

  const AttendanceFilteredScreen({super.key, required this.studentId});

  @override
  State<AttendanceFilteredScreen> createState() =>
      _AttendanceFilteredScreenState();
}

class _AttendanceFilteredScreenState extends State<AttendanceFilteredScreen> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    _fetchAttendance();
  }

  void _fetchAttendance() {
    final dateStr = DateFormat('yyyy-MM-dd').format(selectedDate);
    context.read<AttendanceCubit>().getAttendance(
      studentId: widget.studentId,
      date: dateStr,
    );
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
              _buildCalendar(),
              SizedBox(height: 20.h),
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
                        return const Center(
                          child: Text('لا يوجد سجلات حضور لهذا اليوم'),
                        );
                      }
                      return RefreshIndicator(
                        color: primary,
                        onRefresh: () async => _fetchAttendance(),
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
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

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 40.w),
              Text(
                'غياب/حضور',
                style: TextStyle(
                  fontSize: 20.s,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios, color: black, size: 20.s),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'يمكنك الاطلاع على غياب/حضور الطالب\nفي أي وقت',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.s, color: grey),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.calendar_today_outlined, color: black, size: 18.s),
              Text(
                DateFormat('MMMM dth, yyyy').format(selectedDate),
                style: TextStyle(
                  fontSize: 18.s,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            reverse: true, // RTL
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            itemCount: 14, // Show 2 weeks
            itemBuilder: (context, index) {
              final date = DateTime.now().subtract(Duration(days: index));
              final isSelected =
                  DateFormat('yyyy-MM-dd').format(date) ==
                  DateFormat('yyyy-MM-dd').format(selectedDate);

              final dayName = DateFormat('E').format(date);
              final dayNum = DateFormat('d').format(date);

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDate = date;
                  });
                  _fetchAttendance();
                },
                child: Container(
                  width: 50.w,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? secondary.withOpacity(0.3)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dayNum,
                        style: TextStyle(
                          color: black,
                          fontSize: isSelected ? 18.s : 15.s,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.w500,
                        ),
                      ),
                      Text(
                        _getArabicDayAbbr(date.weekday),
                        style: TextStyle(
                          color: isSelected ? black : grey,
                          fontSize: 12.s,
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String _getArabicDayAbbr(int weekday) {
    const days = {
      DateTime.monday: 'Mon',
      DateTime.tuesday: 'Tue',
      DateTime.wednesday: 'Wed',
      DateTime.thursday: 'Thu',
      DateTime.friday: 'Fri',
      DateTime.saturday: 'Sat',
      DateTime.sunday: 'Sun',
    };
    return days[weekday] ?? '';
  }
}
