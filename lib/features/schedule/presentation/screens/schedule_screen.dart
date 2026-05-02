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

  late DateTime selectedDate;
  late DateTime focusedDate;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    focusedDate = DateTime.now();
    _loadData();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToSelectedDay());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSelectedDay() {
    if (_scrollController.hasClients) {
      final int dayIndex = selectedDate.difference(focusedDate).inDays;
      if (dayIndex >= 0 && dayIndex < 7) {
        final double itemWidth = 55.w + 12.w; // width + horizontal margins
        _scrollController.animateTo(
          dayIndex * itemWidth,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  void _loadData({DateTime? date}) {
    final targetDate = date ?? selectedDate;
    context.read<ScheduleCubit>().getSchedule(
      studentId: widget.studentId,
      day: DateFormat('EEEE', 'en_US').format(targetDate),
    );
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
                      return _buildEmptyState();
                    }

                    bool isLoading = state is ScheduleLoading;
                    bool isRefreshing = false;
                    bool isDayLoading = false;
                    ScheduleData? scheduleData;

                    if (state is ScheduleSuccess) {
                      scheduleData = state.cachedSchedules[widget.studentId];
                      isRefreshing = state.isRefreshing;
                      isDayLoading = state.isDayLoading;
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

                    final String dayNameEnRaw = DateFormat(
                      'EEEE',
                      'en_US',
                    ).format(selectedDate);
                    final String dayNameEn = dayNameEnRaw.toLowerCase();
                    final String dayNameAr = enToAr[dayNameEnRaw] ?? '';

                    // --- ULTIMATE ROBUST PARSER ---
                    final dynamic allPeriods = scheduleData?.periods;
                    dynamic periodsForDayData;

                    if (allPeriods is Map) {
                      allPeriods.forEach((key, value) {
                        String k = key.toString().trim().toLowerCase();
                        if (k == dayNameEn ||
                            k == dayNameAr ||
                            k.contains(dayNameEn)) {
                          periodsForDayData = value;
                        }
                      });
                    } else if (allPeriods is List) {
                      // If it's a direct list, assume it's for the requested day
                      periodsForDayData = allPeriods;
                    }

                    final Map<String, List<PeriodModel>> parsedPeriods = {};
                    if (periodsForDayData != null) {
                      if (periodsForDayData is Map) {
                        periodsForDayData.forEach((key, value) {
                          if (value is List) {
                            parsedPeriods[key] = value
                                .map(
                                  (e) => PeriodModel.fromJson(
                                    Map<String, dynamic>.from(e as Map),
                                  ),
                                )
                                .toList();
                          }
                        });
                      } else if (periodsForDayData is List) {
                        parsedPeriods["الحصص"] = periodsForDayData
                            .map(
                              (e) => PeriodModel.fromJson(
                                Map<String, dynamic>.from(e as Map),
                              ),
                            )
                            .toList();
                      }
                    }

                    // Sort periods: "الحصة 1", "الحصة 2"...
                    final periodEntries = parsedPeriods.entries.toList();
                    try {
                      periodEntries.sort((a, b) {
                        int getNum(String s) =>
                            int.tryParse(s.replaceAll(RegExp(r'[^0-9]'), '')) ??
                            0;
                        return getNum(a.key).compareTo(getNum(b.key));
                      });
                    } catch (_) {}
                    // --- END OF PARSER ---

                    return Skeletonizer(
                      enabled: isLoading || isDayLoading,
                      child: RefreshIndicator(
                        onRefresh: () async => _loadData(date: selectedDate),
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
                                itemCount: (isLoading || isDayLoading)
                                    ? 5
                                    : periodEntries.length,
                                itemBuilder: (context, index) {
                                  if (isLoading || isDayLoading) {
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
  //****************************************************************************** */

  void _changeWeek(int offset) {
    setState(() {
      focusedDate = focusedDate.add(Duration(days: 7 * offset));
      selectedDate = focusedDate;
    });
    _loadData();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToSelectedDay());
  }

  Widget _buildDaySelector() {
    return BlocBuilder<ScheduleCubit, ScheduleState>(
      builder: (context, state) {
        ScheduleData? scheduleData;
        if (state is ScheduleSuccess) {
          scheduleData = state.cachedSchedules[widget.studentId];
        }

        int getLessonCount(DateTime date) {
          if (scheduleData?.periods == null || scheduleData?.periods is! Map) {
            return 0;
          }

          final String dayNameEn = DateFormat('EEEE', 'en_US').format(date);
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

          dynamic dayPeriodsData;
          (scheduleData!.periods as Map).forEach((key, value) {
            if (key.toString().toLowerCase().contains(
                  dayNameEn.toLowerCase(),
                ) ||
                (dayNameAr.isNotEmpty && key.toString().contains(dayNameAr))) {
              dayPeriodsData = value;
            }
          });

          if (dayPeriodsData == null) return 0;

          int count = 0;
          if (dayPeriodsData is Map) {
            dayPeriodsData.forEach((key, list) {
              if (list is List) count += list.length;
            });
          } else if (dayPeriodsData is List) {
            count = dayPeriodsData.length;
          }
          return count;
        }

        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => _changeWeek(1),
                    icon: Icon(Icons.arrow_back_ios, size: 18.s, color: grey),
                  ),
                  Column(
                    children: [
                      Text(
                        focusedDate.month ==
                                focusedDate.add(const Duration(days: 6)).month
                            ? DateFormat(
                                'MMMM yyyy',
                                'en_US',
                              ).format(focusedDate)
                            : "${DateFormat('MMM', 'en_US').format(focusedDate)} - ${DateFormat('MMM yyyy', 'en_US').format(focusedDate.add(const Duration(days: 6)))}",
                        style: TextStyle(
                          fontSize: 18.s,
                          fontWeight: FontWeight.bold,
                          color: black,
                        ),
                      ),
                      Text(
                        DateFormat('EEEE, d', 'en_US').format(selectedDate),
                        style: TextStyle(
                          fontSize: 12.s,
                          fontWeight: FontWeight.w500,
                          color: grey,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () => _changeWeek(-1),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 18.s,
                      color: grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 100.h,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                reverse: true, // RTL
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: 7,
                itemBuilder: (context, index) {
                  final date = focusedDate.add(Duration(days: index));
                  final dayAbbr = DateFormat('E', 'en_US').format(date);
                  final dayNum = DateFormat('d', 'en_US').format(date);
                  bool isSelected = DateUtils.isSameDay(selectedDate, date);
                  int lessonCount = getLessonCount(date);

                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedDate = date);
                      _loadData();
                    },
                    child: Container(
                      width: 55.w,
                      margin: EdgeInsets.symmetric(horizontal: 6.w),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? secondary.withOpacity(0.3)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(12.r),
                        border: isSelected
                            ? Border.all(color: secondary.withOpacity(0.5))
                            : null,
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
                              margin: EdgeInsets.only(top: 5.h),
                              padding: EdgeInsets.all(4.s),
                              decoration: const BoxDecoration(
                                color: primary,
                                shape: BoxShape.circle,
                              ),
                              child:
                                  (state is ScheduleSuccess &&
                                      state.isDayLoading)
                                  ? SizedBox(
                                      width: 8.s,
                                      height: 8.s,
                                      child: const CircularProgressIndicator(
                                        strokeWidth: 1.5,
                                        color: Colors.white,
                                      ),
                                    )
                                  : Text(
                                      lessonCount.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8.s,
                                        fontWeight: FontWeight.bold,
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
  //****************************************************************************** */

  Widget _buildPeriodCard(PeriodModel p) {
    bool isNow = _isPeriodNow(p.startTime, p.endTime);
    bool isQuiz = p.type == 'مذاكرة';
    bool isExam = p.type == 'مذاكرة' || p.type == 'امتحان';

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            // Right Section: Times (Fixed on the right)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildTimeRow(
                  p.startTime ?? p.periodTime?['start_time'] ?? "00:00",
                  true,
                ),
                SizedBox(height: 12.h),
                _buildTimeRow(
                  p.endTime ?? p.periodTime?['end_time'] ?? "00:00",
                  false,
                ),
              ],
            ),

            SizedBox(width: 15.w),

            // Vertical Divider
            Container(width: 1.5, color: const Color(0xffF4F6F7)),

            SizedBox(width: 15.w),

            // Left Section: Content (Subject + Now top, Badges bottom)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Row: Subject (Right) and Now (Left)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        p.subject ?? 'بدون مادة',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w500,
                          color: grey2,
                        ),
                      ),
                      if (isNow)
                        Text(
                          'الآن',
                          style: TextStyle(
                            color: grey,
                            fontSize: 14.s,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      else
                        const SizedBox(),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  // Bottom Row: All Badges in one line
                  Wrap(
                    spacing: 5.w,
                    runSpacing: 5.h,
                    children: [
                      ExpandableBadge(
                        text: p.type ?? 'درس',
                        bgColor: isExam
                            ? const Color(0xffFBEEE6)
                            : const Color(0xffE8F9EE),
                        textColor: isExam
                            ? const Color(0xffE67E22)
                            : const Color(0xff27AE60),
                        showDot: isQuiz,
                      ),
                      ExpandableBadge(
                        text: p.classRoom ?? '',
                        bgColor: const Color(0xffE8F8FB),
                        textColor: const Color(0xff3498DB),
                      ),
                      ExpandableBadge(
                        text: p.batchName ?? '',
                        bgColor: const Color(0xffFDEBD0),
                        textColor: const Color(0xffEB984E),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  //****************************************************************************** */

  Widget _buildTimeRow(String time, bool isStart) {
    String formattedTime = time;
    try {
      final dateTime = DateFormat("HH:mm:ss").parse(time);
      formattedTime = DateFormat("hh:mm a").format(dateTime);
    } catch (_) {}

    return Text(
      formattedTime,
      style: TextStyle(
        fontSize: 14.s,
        fontWeight: FontWeight.w700,
        color: black,
      ),
    );
  }

  Widget _buildLoadingCard() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(width: 50.w, height: 15.h, color: grey3),
              SizedBox(height: 12.h),
              Container(width: 50.w, height: 15.h, color: grey3),
            ],
          ),
          SizedBox(width: 15.w),
          Container(width: 1.5, height: 40.h, color: const Color(0xffF4F6F7)),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 120.w, height: 15.h, color: grey3),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Container(width: 60.w, height: 25.h, color: grey3),
                    SizedBox(width: 5.w),
                    Container(width: 60.w, height: 25.h, color: grey3),
                  ],
                ),
              ],
            ),
          ),
        ],
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

class ExpandableBadge extends StatefulWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final bool showDot;

  const ExpandableBadge({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
    this.showDot = false,
  });

  @override
  State<ExpandableBadge> createState() => _ExpandableBadgeState();
}

class _ExpandableBadgeState extends State<ExpandableBadge> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool isExpanded = false;

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _toggleOverlay() {
    if (isExpanded) {
      _removeOverlay();
      setState(() => isExpanded = false);
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
      setState(() => isExpanded = true);
    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Stack(
        children: [
          // Background listener to close on tap outside
          Positioned.fill(
            child: GestureDetector(
              onTap: _toggleOverlay,
              behavior: HitTestBehavior.translucent,
              child: Container(color: Colors.transparent),
            ),
          ),
          Positioned(
            width: size.width * 1.5 > 150
                ? size.width * 1.5
                : 150, // Min width for readability
            child: CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: Offset(0.0, size.height + 5.h),
              child: Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(8.r),
                color: widget.bgColor,
                shadowColor: Colors.black26,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 8.h,
                  ),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      color: widget.textColor,
                      fontSize: 12.s,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.text.isEmpty) return const SizedBox();

    final List<String> words = widget.text.trim().split(RegExp(r'\s+'));
    // Truncate if more than 1 word AND length > 12 characters
    final bool isLong = words.length > 1 && widget.text.length > 12;
    final String truncatedText = isLong ? "${words[0]}..." : widget.text;

    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: isLong ? _toggleOverlay : null,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: widget.bgColor,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.showDot)
                Container(
                  width: 7.s,
                  height: 7.s,
                  margin: EdgeInsets.only(left: 8.w),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              Flexible(
                child: Text(
                  isLong ? truncatedText : widget.text,
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 12.s,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
