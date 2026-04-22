import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/schedule/domain/models/schedule_model.dart';
import 'package:familyapp/features/schedule/presentation/cubit/schedule_cubit.dart';
import 'package:familyapp/features/schedule/presentation/cubit/schedule_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ScheduleScreen extends StatefulWidget {
  final int studentId;
  const ScheduleScreen({super.key, required this.studentId});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final List<String> days = [
    'Saturday',
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];

  late String selectedDay;

  @override
  void initState() {
    super.initState();
    String todayStr = DateFormat('EEEE').format(DateTime.now());
    selectedDay = days.contains(todayStr) ? todayStr : 'Saturday';
    _loadData();
  }

  void _loadData() {
    context.read<ScheduleCubit>().getSchedule(studentId: widget.studentId);
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
                              'البرنامج اليومي',
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
                          'يمكنك الاطلاع على برنامج دوام الطالب',
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
              SizedBox(height: 20.h),
              _buildDaySelector(),
              SizedBox(height: 20.h),
              Expanded(
                child: BlocBuilder<ScheduleCubit, ScheduleState>(
                  builder: (context, state) {
                    if (state is ScheduleError && state is! ScheduleSuccess) {
                      return Center(child: Text(state.message));
                    }

                    bool isLoading = state is ScheduleLoading;
                    ScheduleData? scheduleData;

                    if (state is ScheduleSuccess) {
                      scheduleData = state.cachedSchedules[widget.studentId];
                    }

                    final Map<String, String> enToAr = {
                      'Saturday': 'السبت',
                      'Sunday': 'الأحد',
                      'Monday': 'الاثنين',
                      'Tuesday': 'الثلاثاء',
                      'Wednesday': 'الأربعاء',
                      'Thursday': 'الخميس',
                      'Friday': 'الجمعة',
                    };

                    final periodsForDay =
                        (scheduleData?.periods?[selectedDay] ??
                                scheduleData?.periods?[enToAr[selectedDay]] ??
                                {})
                            as Map<String, dynamic>;
                    final periodEntries = periodsForDay.entries.toList();
                    periodEntries.sort((a, b) => a.key.compareTo(b.key));

                    return Skeletonizer(
                      enabled: isLoading,
                      child: RefreshIndicator(
                        onRefresh: () async => _loadData(),
                        color: primary,
                        child: periodEntries.isEmpty && !isLoading
                            ? SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                  child: _buildEmptyState(),
                                ),
                              )
                            : ListView.builder(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 10.h,
                                ),
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemCount: isLoading ? 5 : periodEntries.length,
                                itemBuilder: (context, index) {
                                  if (isLoading) {
                                    return _buildLoadingCard();
                                  }
                                  final entry = periodEntries[index];
                                  final periodList = entry.value;
                                  return Column(
                                    children: (periodList as List)
                                        .map<Widget>(
                                          (p) => _buildPeriodCard(
                                            p as PeriodModel,
                                          ),
                                        )
                                        .toList(),
                                  );
                                },
                              ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDaySelector() {
    final today = DateTime.now();

    return BlocBuilder<ScheduleCubit, ScheduleState>(
      builder: (context, state) {
        ScheduleData? scheduleData;
        if (state is ScheduleSuccess) {
          scheduleData = state.cachedSchedules[widget.studentId];
        }

        int getLessonCount(String dayNameEn) {
          if (scheduleData?.periods == null) return 0;

          final Map<String, String> enToAr = {
            'Saturday': 'السبت',
            'Sunday': 'الأحد',
            'Monday': 'الاثنين',
            'Tuesday': 'الثلاثاء',
            'Wednesday': 'الأربعاء',
            'Thursday': 'الخميس',
            'Friday': 'الجمعة',
          };

          final dayNameAr = enToAr[dayNameEn] ?? '';

          // Flexible search: look for any key that contains the day name (EN or AR)
          dynamic dayPeriodsData;
          scheduleData!.periods!.forEach((key, value) {
            if (key.toLowerCase().contains(dayNameEn.toLowerCase()) ||
                (dayNameAr.isNotEmpty && key.contains(dayNameAr))) {
              dayPeriodsData = value;
            }
          });

          if (dayPeriodsData == null) return 0;

          int count = 0;
          if (dayPeriodsData is Map) {
            dayPeriodsData.forEach((key, list) {
              if (list is List) count += list.length;
            });
          }
          return count;
        }

        DateTime displayedDate = today;
        for (int i = 0; i < 7; i++) {
          final date = today.add(Duration(days: i));
          if (DateFormat('EEEE').format(date) == selectedDay) {
            displayedDate = date;
            break;
          }
        }

        return Column(
          children: [
            Text(
              DateFormat('MMMM d, yyyy').format(displayedDate),
              style: TextStyle(
                fontSize: 18.s,
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 100.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                reverse: true, // RTL
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: 7,
                itemBuilder: (context, index) {
                  final date = today.add(Duration(days: index));
                  final dayName = DateFormat('EEEE').format(date);
                  final dayAbbr = DateFormat('E').format(date);
                  final dayNum = DateFormat('d').format(date);
                  bool isSelected = selectedDay == dayName;
                  int lessonCount = getLessonCount(dayName);

                  return GestureDetector(
                    onTap: () => setState(() => selectedDay = dayName),
                    child: Container(
                      width: 55.w,
                      margin: EdgeInsets.symmetric(horizontal: 6.w),
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
                              color: const Color(0xff2C3E50),
                              fontSize: 16.s,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            dayAbbr,
                            style: TextStyle(
                              color: isSelected ? black : grey,
                              fontSize: 12.s,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (isSelected)
                            Container(
                              padding: EdgeInsets.only(top: 2.h),
                              margin: EdgeInsets.only(top: 5.h),
                              decoration: const BoxDecoration(
                                color: primary,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  lessonCount.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.s,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPeriodCard(PeriodModel p) {
    bool isNow = _isPeriodNow(p.startTime, p.endTime);
    bool isExam = p.type == 'مذاكرة' || p.type == 'امتحان';

    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.all(15.s),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTimeRow(p.startTime ?? "00:00", true),
              SizedBox(height: 15.h),
              _buildTimeRow(p.endTime ?? "00:00", false),
            ],
          ),
          SizedBox(width: 15.w),
          Container(height: 60.h, width: 1, color: grey.withOpacity(0.1)),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (isNow)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          'الآن',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 10.s,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    else
                      const SizedBox(),
                    Text(
                      p.subject ?? 'بدون مادة',
                      style: TextStyle(
                        fontSize: 14.s,
                        fontWeight: FontWeight.bold,
                        color: black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 5.h,
                  alignment: WrapAlignment.end,
                  children: [
                    _buildBadge(
                      p.batchName ?? '',
                      const Color(0xffFDEBD0),
                      const Color(0xffEB984E),
                    ),
                    _buildBadge(
                      p.classRoom ?? '',
                      const Color(0xffE8F8F5),
                      const Color(0xff1ABC9C),
                    ),
                    _buildBadge(
                      p.type ?? 'درس',
                      isExam
                          ? const Color(0xffFBEEE6)
                          : const Color(0xffE9F7EF),
                      isExam
                          ? const Color(0xffE67E22)
                          : const Color(0xff27AE60),
                      showDot: isExam,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeRow(String time, bool isStart) {
    String formattedTime = time;
    try {
      final dateTime = DateFormat("HH:mm:ss").parse(time);
      formattedTime = DateFormat("hh:mm a").format(dateTime).toLowerCase();
    } catch (_) {}

    return Text(
      formattedTime,
      style: TextStyle(
        fontSize: 12.s,
        fontWeight: FontWeight.bold,
        color: isStart ? black : grey,
      ),
    );
  }

  Widget _buildBadge(
    String text,
    Color bgColor,
    Color textColor, {
    bool showDot = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showDot)
            Container(
              width: 5.s,
              height: 5.s,
              margin: EdgeInsets.only(left: 5.w),
              decoration: BoxDecoration(
                color: textColor,
                shape: BoxShape.circle,
              ),
            ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 10.s,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      height: 100.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 50.s,
            color: grey.withOpacity(0.3),
          ),
          SizedBox(height: 15.h),
          Text(
            'لا يوجد دوام لهذا اليوم',
            style: TextStyle(color: grey, fontSize: 14.s),
          ),
        ],
      ),
    );
  }

  bool _isPeriodNow(String? start, String? end) {
    if (start == null || end == null) return false;
    try {
      final now = DateTime.now();
      final startTime = DateFormat("HH:mm:ss").parse(start);
      final endTime = DateFormat("HH:mm:ss").parse(end);

      final todayStart = DateTime(
        now.year,
        now.month,
        now.day,
        startTime.hour,
        startTime.minute,
      );
      final todayEnd = DateTime(
        now.year,
        now.month,
        now.day,
        endTime.hour,
        endTime.minute,
      );

      return now.isAfter(todayStart) && now.isBefore(todayEnd);
    } catch (_) {
      return false;
    }
  }
}
