import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:familyapp/features/student/presentation/screens/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExamsScreen extends StatefulWidget {
  final ExamData exams;
  ExamsScreen({super.key, required this.exams});

  @override
  State<ExamsScreen> createState() => _ExamsScreenState();
}

class _ExamsScreenState extends State<ExamsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    // تصفية القوائم بناءً على نص البحث
    final filteredCurrentWeek =
        widget.exams.currentWeek
            ?.where(
              (exam) => (exam.subject ?? "").toLowerCase().contains(
                _searchQuery.toLowerCase(),
              ),
            )
            .toList() ??
        [];

    final filteredLastWeek =
        widget.exams.lastWeek
            ?.where(
              (exam) => (exam.subject ?? "").toLowerCase().contains(
                _searchQuery.toLowerCase(),
              ),
            )
            .toList() ??
        [];

    // فحص إذا كان البحث لم يعطِ أي نتيجة في القائمتين معاً
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
            colors: [secondary1.withOpacity(0.3), scaffoldc],
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
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
                            hintStyle: TextStyle(color: grey, fontSize: 14.s),
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
                      // داخل الـ InkWell الخاص بالفلتر في ExamsScreen
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterScreen(
                              // مرر المواد الفريدة الموجودة عندك
                              subjects: const [
                                "رياضيات",
                                "عربي",
                                "ديانة",
                                "فيزياء",
                                "كيمياء",
                                "إنجليزي",
                                "فرنسي",
                                "علوم",
                              ],
                              onApplyFilter: (date, subject, range) {
                                setState(() {
                                  // هنا تقوم بعملية الفلترة الفعلية للقائمة بناءً على ما اختاره المستخدم
                                  // مثال:
                                  // _searchQuery = subject; // إذا أردت البحث بالمادة المختار
                                  // أو فلترة قائمة Exams حسب range.start و range.end
                                  print(
                                    "فلترة المادة: $subject من علامة ${range.start} إلى ${range.end}",
                                  );
                                });
                              },
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
                          border: Border.all(color: grey.withOpacity(0.1)),
                        ),
                        child: SvgPicture.asset('assets/svgs/filter.svg'),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.h),

              Expanded(
                child: noSearchResults
                    ? _buildEmptyState(
                        "لا توجد نتائج بحث مطابقة",
                      ) // رسالة عند فشل البحث
                    : ListView(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        physics: const BouncingScrollPhysics(),
                        children: [
                          // --- الأسبوع الحالي ---
                          _buildSectionTitle("الأسبوع الحالي"),
                          SizedBox(height: 10.h),
                          if (filteredCurrentWeek.isEmpty)
                            _buildEmptyState("لا يوجد مذاكرات حالياً")
                          else
                            ...filteredCurrentWeek.map(
                              (exam) => _buildExamCard(exam),
                            ),

                          SizedBox(height: 30.h),

                          // --- الأسبوع الماضي ---
                          _buildSectionTitle("الأسبوع الماضي"),
                          SizedBox(height: 10.h),
                          if (filteredLastWeek.isEmpty)
                            _buildEmptyState("لا يوجد مذاكرات حالياً")
                          else
                            ...filteredLastWeek.map(
                              (exam) => _buildExamCard(exam),
                            ),

                          SizedBox(height: 20.h),
                        ],
                      ),
              ),
            ],
          ),
        ),
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
            color: Colors.black.withOpacity(0.03),
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
