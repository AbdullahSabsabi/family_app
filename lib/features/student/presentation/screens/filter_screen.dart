
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  final List<String> subjects;
  final Function(
    DateTime? selectedDate,
    String? selectedSubject,
    RangeValues selectedRange,
  )
  onApplyFilter;

  const FilterScreen({
    super.key,
    required this.subjects,
    required this.onApplyFilter,
  });

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // القيم الافتراضية
  DateTime? _selectedDate = DateTime.now();
  String? _selectedSubject;
  RangeValues _currentRangeValues = const RangeValues(0, 400);

  @override
  void initState() {
    super.initState();
    // إذا بدك تختار أول مادة تلقائياً
    if (widget.subjects.isNotEmpty) {
      _selectedSubject = widget.subjects[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldc,
      body: SafeArea(
        child: Column(
          children: [
            // --- Header ---
            _buildHeader(context),

            const Divider(color: Color(0xffF0F0F0), thickness: 1.5),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(height: 20.h),

                  // --- قسم التاريخ ---
                  _buildLabel("التاريخ"),
                  _buildDatePickerCard(),

                  SizedBox(height: 30.h),

                  // --- قسم المواد ---
                  _buildLabel("المواد"),
                  _buildSubjectsWrap(),

                  SizedBox(height: 30.h),

                  // --- قسم العلامة ---
                  _buildLabel("العلامة"),
                  _buildMarkSection(),

                  SizedBox(height: 40.h),
                ],
              ),
            ),

            // --- زر الحفظ ---
            _buildSaveButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.grid_view_rounded, size: 22.s, color: black),
              Row(
                children: [
                  Text(
                    'فلترة',
                    style: TextStyle(
                      fontSize: 18.s,
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18.s,
                      color: black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Text(
            'حدد المعايير لعرض نتائج مخصصة',
            style: TextStyle(color: grey.withOpacity(0.7), fontSize: 12.s),
          ),
        ],
      ),
    );
  }

  Widget _buildDatePickerCard() {
    return InkWell(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: _selectedDate ?? DateTime.now(),
          firstDate: DateTime(2020),
          lastDate: DateTime(2030),
        );
        if (picked != null) setState(() => _selectedDate = picked);
      },
      child: Container(
        padding: EdgeInsets.all(15.s),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.calendar_month_outlined, color: grey, size: 20.s),
            Text(
              "${_selectedDate?.year}-${_selectedDate?.month}-${_selectedDate?.day}",
              style: TextStyle(
                fontSize: 15.s,
                fontWeight: FontWeight.bold,
                color: const Color(0xff2D3142),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectsWrap() {
    return Wrap(
      spacing: 10.w,
      runSpacing: 10.h,
      alignment: WrapAlignment.end,
      children: widget.subjects.map((sub) {
        bool isSelected = _selectedSubject == sub;
        return InkWell(
          onTap: () => setState(() => _selectedSubject = sub),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: isSelected
                  ? primary.withOpacity(0.1)
                  : const Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: isSelected ? primary : Colors.transparent,
                width: 1,
              ),
            ),
            child: Text(
              sub,
              style: TextStyle(
                color: isSelected ? primary : black.withOpacity(0.6),
                fontSize: 13.s,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildMarkSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildMarkInput("إلى", _currentRangeValues.end.round().toString()),
            _buildMarkInput("من", _currentRangeValues.start.round().toString()),
          ],
        ),
        SizedBox(height: 10.h),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: primary,
            inactiveTrackColor: const Color(0xffF0F0F0),
            thumbColor: white,
            rangeThumbShape: const RoundRangeSliderThumbShape(
              enabledThumbRadius: 10,
            ),
            trackHeight: 4,
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 400,
            onChanged: (v) => setState(() => _currentRangeValues = v),
          ),
        ),
      ],
    );
  }

  Widget _buildMarkInput(String label, String val) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          label,
          style: TextStyle(color: grey, fontSize: 11.s),
        ),
        SizedBox(height: 5.h),
        Container(
          width: 70.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: const Color(0xffF5F5F5),
            borderRadius: BorderRadius.circular(8.r),
          ),
          alignment: Alignment.center,
          child: Text(
            val,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.s),
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return Padding(
      padding: EdgeInsets.all(25.s),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          minimumSize: Size(double.infinity, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        onPressed: () {
          // استدعاء الـ Callback بالقيم الفعلية المختارة
          widget.onApplyFilter(
            _selectedDate,
            _selectedSubject,
            _currentRangeValues,
          );
          Navigator.pop(context);
        },
        child: Text(
          "تطبيق الفلتر",
          style: TextStyle(
            color: white,
            fontSize: 16.s,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Text(
        text,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 14.s,
          color: grey,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
