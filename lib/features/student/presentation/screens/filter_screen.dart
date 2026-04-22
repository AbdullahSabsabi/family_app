import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/features/student/presentation/cubit/exam_filter_cubit.dart';
import 'package:familyapp/features/student/presentation/cubit/exam_filter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/student/domain/models/student_models.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  final int studentId;
  final Function(
    DateTime? fromDate,
    DateTime? toDate,
    int? subjectId,
    RangeValues selectedRange,
  )
  onApplyFilter;

  const FilterScreen({
    super.key,
    required this.studentId,
    required this.onApplyFilter,
  });

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  DateTime? _fromDate;
  DateTime? _toDate;
  int? _selectedSubjectId;
  RangeValues _currentRangeValues = const RangeValues(0, 600);

  @override
  void initState() {
    super.initState();
    context.read<ExamFilterCubit>().getSubjects(studentId: widget.studentId);
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
                            SizedBox(width: 10.h),
                            Text(
                              'فلترة',
                              style: TextStyle(
                                fontSize: 18.s,
                                fontWeight: FontWeight.w500,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'حدد المعايير لعرض نتائج مخصصة بناءً على المادة والتاريخ والعلامة',
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

              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 25.h),

                    // --- قسم التاريخ ---
                    _buildLabel("التاريخ"),
                    _buildDateRangeSection(),

                    SizedBox(height: 35.h),

                    // --- قسم المواد ---
                    _buildLabel("المواد"),
                    _buildSubjectsWrap(),

                    SizedBox(height: 35.h),

                    // --- قسم العلامة ---
                    _buildLabel("العلامة"),
                    _buildMarkSection(),
                  ],
                ),
              ),

              // --- زر الحفظ ---
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: _buildSaveButton(),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateRangeSection() {
    return Column(
      children: [
        _buildDateInputRow(
          "من",
          _fromDate,
          (date) => setState(() => _fromDate = date),
        ),
        SizedBox(height: 15.h),
        _buildDateInputRow(
          "إلى",
          _toDate,
          (date) => setState(() => _toDate = date),
        ),
      ],
    );
  }

  String _formatDateEnglish(DateTime? date) {
    if (date == null) return "حدد التاريخ";
    return DateFormat('MMMM dd, yyyy').format(date);
  }

  String _getDayNameEnglish(DateTime date) {
    return DateFormat('EEEE').format(date);
  }

  Widget _buildDateInputRow(
    String label,
    DateTime? date,
    Function(DateTime) onDateSelected,
  ) {
    String formattedDate = _formatDateEnglish(date);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 30.w,
          child: Text(
            label,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 14.s,
              color: black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: GestureDetector(
            onTap: () => _showCustomDatePicker(
              label,
              date ?? DateTime.now(),
              onDateSelected,
            ),
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.r),
              ),
              alignment: Alignment.center,
              child: Text(
                formattedDate,
                style: TextStyle(
                  fontSize: 14.s,
                  fontWeight: FontWeight.w500,
                  color: black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showCustomDatePicker(
    String title,
    DateTime initialDate,
    Function(DateTime) onDateSelected,
  ) {
    DateTime tempDate = initialDate;
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.s),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "تحديد تاريخ $title",
                      style: TextStyle(
                        fontSize: 14.s,
                        color: grey2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "${_getDayNameEnglish(tempDate)}, ${_formatDateEnglish(tempDate)}",
                      style: TextStyle(
                        fontSize: 18.s,
                        color: primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 300.h,
                      width: 300.w,
                      child: Localizations.override(
                        context: context,
                        locale: const Locale('en', 'US'),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: ColorScheme.light(
                              primary: primary,
                              onPrimary: white,
                              onSurface: black,
                            ),
                          ),
                          child: CalendarDatePicker(
                            initialDate: tempDate,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                            onDateChanged: (date) {
                              setDialogState(() => tempDate = date);
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: white,
                              foregroundColor: primary,
                              side: const BorderSide(color: primary),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              elevation: 0,
                            ),
                            child: const Text("إلغاء"),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              onDateSelected(tempDate);
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              elevation: 0,
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [primary, primary1],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: 45.h,
                                child: const Text(
                                  "تطبيق",
                                  style: TextStyle(color: white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSubjectsWrap() {
    return BlocBuilder<ExamFilterCubit, ExamFilterState>(
      builder: (context, state) {
        List<EnrolledSubjectModel> subjects = [];
        bool isLoading = state is ExamFilterSubjectsLoading;

        if (state is ExamFilterSubjectsSuccess) {
          subjects = state.subjects;
          if (_selectedSubjectId == null && subjects.isNotEmpty) {
            _selectedSubjectId = subjects[0].subjectId;
          }
        }

        if (isLoading) {
          return Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  CircularProgressIndicator(strokeWidth: 2, color: primary),
                  SizedBox(height: 10.h),
                  Text(
                    "جاري تحميل المواد...",
                    style: TextStyle(color: grey, fontSize: 12.s),
                  ),
                ],
              ),
            ),
          );
        }

        if (subjects.isEmpty && state is! ExamFilterSubjectsLoading) {
          return Center(
            child: Text(
              "لا يوجد مواد متاحة حالياً",
              style: TextStyle(color: grey, fontSize: 13.s),
            ),
          );
        }

        return Wrap(
          spacing: 10.w,
          runSpacing: 12.h,
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: subjects.map((sub) {
            bool isSelected = _selectedSubjectId == sub.subjectId;
            return InkWell(
              onTap: () => setState(() => _selectedSubjectId = sub.subjectId),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? primary.withValues(alpha: 0.08)
                      : const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: isSelected ? primary : Colors.transparent,
                    width: 1.2,
                  ),
                ),
                child: Text(
                  sub.subjectName ?? "",
                  style: TextStyle(
                    color: isSelected ? primary : grey2,
                    fontSize: 13.s,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildMarkSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildMarkInput("من", _currentRangeValues.start.round().toString()),
            _buildMarkInput("إلى", _currentRangeValues.end.round().toString()),
          ],
        ),
        SizedBox(height: 30.h),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: primary,
            inactiveTrackColor: const Color(0xffF2F2F2),
            thumbColor: white,
            overlayColor: primary.withValues(alpha: 0.1),
            rangeThumbShape: const RoundRangeSliderThumbShape(
              enabledThumbRadius: 10,
            ),
            trackHeight: 6.h,
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 600,
            onChanged: (v) => setState(() => _currentRangeValues = v),
          ),
        ),
      ],
    );
  }

  Widget _buildMarkInput(String label, String val) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: grey, fontSize: 12.s),
        ),
        SizedBox(height: 8.h),
        Container(
          width: 80.w,
          height: 45.h,
          decoration: BoxDecoration(
            color: const Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(10.r),
          ),
          alignment: Alignment.center,
          child: Text(
            val,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.s,
              color: black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return GestureDetector(
      onTap: () {
        widget.onApplyFilter(
          _fromDate,
          _toDate,
          _selectedSubjectId,
          _currentRangeValues,
        );
        Navigator.pop(context);
      },
      child: Container(
        height: 34.h,
        width: 87.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          gradient: LinearGradient(colors: [primary, primary1]),
        ),
        child: Center(
          child: Text(
            "حفظ",
            style: TextStyle(
              color: white,
              fontSize: 14.s,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.s,
            color: black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
