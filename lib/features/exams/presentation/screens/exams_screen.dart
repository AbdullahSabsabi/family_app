import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/exams/domain/models/exams_model.dart';
import 'package:familyapp/features/exams/presentation/cubit/exams_cubit.dart';
import 'package:familyapp/features/exams/presentation/cubit/exams_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExamsScreenE extends StatefulWidget {
  final int studentId;
  const ExamsScreenE({super.key, required this.studentId});

  @override
  State<ExamsScreenE> createState() => _ExamsScreenEState();
}

class _ExamsScreenEState extends State<ExamsScreenE> {
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
      final int dayIndex = selectedDate.day - 1;
      final double itemWidth = 55.w + 12.w; // width + horizontal margins
      _scrollController.jumpTo(dayIndex * itemWidth);
    }
  }

  void _loadData({bool isRefresh = false}) {
    final dateStr = DateFormat('yyyy-MM-dd').format(selectedDate);
    context.read<ExamsCubit>().getExams(
      studentId: widget.studentId,
      date: dateStr,
      isRefresh: isRefresh,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldc,

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
        child: SafeArea(
          child: BlocBuilder<ExamsCubit, ExamsState>(
            builder: (context, state) {
              bool isLoading = state is ExamsLoading;
              bool isDayLoading = false;
              List<ExamModel> exams = [];

              if (state is ExamsSuccess) {
                isDayLoading = state.isDayLoading;
                final dateStr = DateFormat('yyyy-MM-dd').format(selectedDate);
                exams = state.cachedExams[widget.studentId]?[dateStr] ?? [];
              }

              return Column(
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
                                  'المذاكرات',
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
                              'يمكنك الاطلاع على جميع المذاكرات التي\nتقدم في هذا اليوم',
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
                  _buildDateSelector(),
                  Expanded(
                    child: Skeletonizer(
                      enabled: isLoading || isDayLoading,
                      child: RefreshIndicator(
                        onRefresh: () async => _loadData(isRefresh: true),
                        color: primary,
                        child: exams.isEmpty && !isLoading && !isDayLoading
                            ? _buildEmptyState()
                            : ListView.builder(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 10.h,
                                ),
                                itemCount: (isLoading || isDayLoading)
                                    ? 5
                                    : exams.length,
                                itemBuilder: (context, index) {
                                  if (isLoading || isDayLoading) {
                                    return _buildSkeletonCard();
                                  }
                                  return _buildExamCard(exams[index]);
                                },
                              ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _changeMonth(int offset) {
    setState(() {
      focusedDate = DateTime(focusedDate.year, focusedDate.month + offset, 1);
      final now = DateTime.now();
      if (focusedDate.year == now.year && focusedDate.month == now.month) {
        selectedDate = now;
      } else {
        selectedDate = focusedDate;
      }
    });
    _loadData();
    Future.delayed(const Duration(milliseconds: 100), () => _scrollToSelectedDay());
  }

  Widget _buildDateSelector() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => _changeMonth(-1),
                  icon: Icon(Icons.arrow_back_ios, size: 18.s, color: grey),
                ),
                Column(
                  children: [
                    Text(
                      DateFormat('MMMM yyyy', 'en_US').format(focusedDate),
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
                  onPressed: () => _changeMonth(1),
                  icon: Icon(Icons.arrow_forward_ios, size: 18.s, color: grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          SizedBox(
            height: 100.h,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              itemCount: DateTime(focusedDate.year, focusedDate.month + 1, 0).day,
              itemBuilder: (context, index) {
                final date = DateTime(focusedDate.year, focusedDate.month, index + 1);
                final dayAbbr = DateFormat('E', 'en_US').format(date);
                final dayNum = DateFormat('d', 'en_US').format(date);
                bool isSelected = DateUtils.isSameDay(selectedDate, date);

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
                      borderRadius: BorderRadius.circular(15.r),
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
                            color: black,
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
                            width: 6.r,
                            height: 6.r,
                            decoration: const BoxDecoration(
                              color: primary,
                              shape: BoxShape.circle,
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
      ),
    );
  }

  Widget _buildExamCard(ExamModel exam) {
    Color statusColor;
    IconData statusIcon;
    String statusText;

    switch (exam.status?.toLowerCase()) {
      case 'completed':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle_outline;
        statusText = 'مكتمل';
        break;
      case 'cancelled':
        statusColor = Colors.red;
        statusIcon = Icons.cancel_outlined;
        statusText = 'ملغي';
        break;
      case 'postponed':
        statusColor = Colors.amber;
        statusIcon = Icons.history_outlined;
        statusText = 'مؤجل';
        break;
      default:
        statusColor = Colors.amber;
        statusIcon = Icons.history_outlined;
        statusText = 'مجدول';
    }

    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.only(
        right: 35.w,
        left: 20.w,
        top: 20.h,
        bottom: 20.h,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Details Section (Right)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exam.name ?? 'بدون اسم',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                SizedBox(height: 8.h),
                _buildInfoRow(
                  '${exam.examTime?.substring(0, 5)} - ${exam.examDate?.split('T').first}',
                  Icons.calendar_month_outlined,
                ),
                SizedBox(height: 8.h),
                _buildInfoRow(
                  exam.batchSubject?.batch?.name ?? 'غير محدد',
                  Icons.language_outlined,
                ),
                if (exam.batchSubject?.classRoom != null) ...[
                  SizedBox(height: 8.h),
                  _buildInfoRow(
                    exam.batchSubject!.classRoom!.name ?? '',
                    Icons.location_on_outlined,
                  ),
                ],
                if (exam.remarks != null && exam.remarks!.isNotEmpty) ...[
                  SizedBox(height: 10.h),
                  Text(
                    exam.remarks!,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 11.s,
                      color: grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ],
            ),
          ),
          SizedBox(width: 15.w),
          // Status Icon Section (Left)
          Icon(statusIcon, color: statusColor, size: 20.s),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String text, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, size: 12.s, color: grey.withOpacity(0.5)),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            fontSize: 12.s,
            color: grey1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildSkeletonCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      height: 120.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20.r),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.event_note_outlined,
            size: 60.s,
            color: grey.withOpacity(0.3),
          ),
          SizedBox(height: 15.h),
          Text(
            'لا يوجد مذاكرات في هذا التاريخ',
            style: TextStyle(fontSize: 14.s, color: grey),
          ),
        ],
      ),
    );
  }
}
