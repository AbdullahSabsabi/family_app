import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:familyapp/features/student/presentation/cubit/exam_filter_cubit.dart';
import 'package:familyapp/features/student/presentation/cubit/exam_filter_state.dart';
import 'package:familyapp/features/student/presentation/screens/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class ExamsScreen extends StatefulWidget {
  final ExamData exams;
  final int studentId;
  const ExamsScreen({super.key, required this.exams, required this.studentId});

  @override
  State<ExamsScreen> createState() => _ExamsScreenState();
}

class _ExamsScreenState extends State<ExamsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  late ExamFilterCubit _filterCubit;

  @override
  void initState() {
    super.initState();
    _filterCubit = getIt<ExamFilterCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _filterCubit,
      child: BlocBuilder<ExamFilterCubit, ExamFilterState>(
          builder: (context, filterState) {
            List<ExamModel> currentWeek = [];
            List<ExamModel> lastWeek = [];
            bool isFiltered = filterState is ExamFilterSuccess;
            bool isLoading = filterState is ExamFilterLoading;

            if (isFiltered) {
              final filteredData = filterState.response.data ?? [];
              currentWeek = filteredData
                  .map(
                    (e) => ExamModel(
                      id: e.id,
                      mark: e.obtainedMarks?.toString(),
                      isPassed:
                          (e.isPassed == true ||
                              e.isPassed == 1 ||
                              e.isPassed == "1")
                          ? 1
                          : 0,
                      subject:
                          e.subjectName ??
                          e.subject?.name ??
                          e.examName ??
                          e.exam?.name,
                      date: e.createdAt ?? e.exam?.examDate,
                    ),
                  )
                  .toList();
              lastWeek = [];
            } else if (isLoading) {
              currentWeek = [];
              lastWeek = [];
            } else {
              currentWeek = widget.exams.currentWeek ?? [];
              lastWeek = widget.exams.lastWeek ?? [];
            }

            final filteredCurrentWeek = currentWeek
                .where(
                  (exam) => (exam.subject ?? "").toLowerCase().contains(
                    _searchQuery.toLowerCase(),
                  ),
                )
                .toList();

            final filteredLastWeek = lastWeek
                .where(
                  (exam) => (exam.subject ?? "").toLowerCase().contains(
                    _searchQuery.toLowerCase(),
                  ),
                )
                .toList();

            bool noSearchResults =
                _searchQuery.isNotEmpty &&
                filteredCurrentWeek.isEmpty &&
                filteredLastWeek.isEmpty;

            return Scaffold(
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
                      // الهيدر الأصلي
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
                                      'العلامات',
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
                                  'يمكنك الاطلاع على جميع مذاكرات الطالب\nفي جميع المواد',
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

                      SizedBox(height: 10.h),

                      // شريط البحث
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 10.h,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: scaffoldc,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: TextField(
                                  controller: _searchController,
                                  textAlign: TextAlign.right,
                                  onChanged: (value) =>
                                      setState(() => _searchQuery = value),
                                  decoration: InputDecoration(
                                    hintText: 'بحث',
                                    hintStyle: TextStyle(
                                      color: grey,
                                      fontSize: 14.s,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: grey,
                                      size: 20.s,
                                    ),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 13.h,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (ctx) => BlocProvider.value(
                                      value: _filterCubit,
                                      child: FilterScreen(
                                        studentId: widget.studentId,
                                        onApplyFilter:
                                            (fromDate, toDate, subjectId, range) {
                                          context
                                              .read<ExamFilterCubit>()
                                              .filterExams(
                                                studentId: widget.studentId,
                                                subjectId: subjectId,
                                                dateFrom: fromDate != null
                                                    ? DateFormat(
                                                        'yyyy-MM-dd',
                                                      ).format(fromDate)
                                                    : null,
                                                dateTo: toDate != null
                                                    ? DateFormat(
                                                        'yyyy-MM-dd',
                                                      ).format(toDate)
                                                    : null,
                                                marksFrom: range.start,
                                                marksTo: range.end,
                                              );
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                height: 36.h,
                                width: 41.w,
                                padding: EdgeInsets.all(10.s),
                                decoration: BoxDecoration(
                                  color: scaffoldc,
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(
                                    color: grey.withValues(alpha: 0.1),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  'assets/svgs/filter.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Expanded(
                        child: noSearchResults
                            ? _buildEmptyState("لا توجد نتائج بحث مطابقة")
                            : isLoading
                            ? Center(
                                child: CircularProgressIndicator(color: primary),
                              )
                            : ListView(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                physics: const BouncingScrollPhysics(),
                                children: [
                                  if (isFiltered) ...[
                                    _buildSectionTitle("نتائج الفلترة"),
                                    SizedBox(height: 10.h),
                                    if (filteredCurrentWeek.isEmpty)
                                      _buildEmptyState(
                                        "لا يوجد علامات تطابق هذه المعايير",
                                      )
                                    else
                                      ...filteredCurrentWeek.map(
                                        (exam) => _buildExamCard(exam),
                                      ),
                                  ] else ...[
                                    // --- الأسبوع الحالي ---
                                    _buildSectionTitle("الأسبوع الحالي"),
                                    SizedBox(height: 10.h),
                                    if (filteredCurrentWeek.isEmpty)
                                      _buildEmptyState("لا يوجد علامات حالياً")
                                    else
                                      ...filteredCurrentWeek.map(
                                        (exam) => _buildExamCard(exam),
                                      ),

                                    SizedBox(height: 30.h),

                                    // --- الأسبوع الماضي ---
                                    _buildSectionTitle("الأسبوع الماضي"),
                                    SizedBox(height: 10.h),
                                    if (filteredLastWeek.isEmpty)
                                      _buildEmptyState("لا يوجد علامات حالياً")
                                    else
                                      ...filteredLastWeek.map(
                                        (exam) => _buildExamCard(exam),
                                      ),
                                  ],
                                  SizedBox(height: 20.h),
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.s,
          fontWeight: FontWeight.bold,
          color: black,
        ),
      ),
    );
  }

  Widget _buildExamCard(ExamModel exam) {
    bool passed = exam.isPassed == 1;
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exam.subject ?? 'مادة غير معروفة',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.s,
                    color: black,
                  ),
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 12.s,
                      color: grey,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      exam.date?.split('T').first ?? '',
                      style: TextStyle(
                        color: grey,
                        fontSize: 12.s,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              passed
                  ? SvgPicture.asset('assets/svgs/top.svg')
                  : SvgPicture.asset('assets/svgs/down.svg'),
              SizedBox(width: 10.w),
              Text(
                exam.mark ?? '0',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.s,
                  color: black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(String msg) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        msg,
        style: TextStyle(color: grey, fontSize: 14.s),
      ),
    );
  }
}
