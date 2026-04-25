import 'package:flutter/material.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/attendance/domain/models/attendance_models.dart';

import 'package:intl/intl.dart';

class AttendanceCard extends StatelessWidget {
  final AttendanceRecord record;

  const AttendanceCard({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    String dayName = '';
    if (record.date != null) {
      try {
        DateTime date = DateTime.parse(record.date!);
        dayName = _getArabicDayName(date.weekday);
      } catch (e) {
        dayName = 'اليوم';
      }
    }

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
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
                  dayName,
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 10.s,
                      color: grey2,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      record.date ?? '',
                      style: TextStyle(fontSize: 12.s, color: grey2),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                _buildTimeRow(
                  label: 'وقت الوصول',
                  time: record.checkIn ?? '00:00',
                  icon: Icons.access_time,
                ),
                SizedBox(height: 4.h),
                _buildTimeRow(
                  label: 'وقت الانصراف',
                  time: record.checkOut ?? '00:00',
                  icon: Icons.access_time_filled,
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          _buildStatusIcon(),
        ],
      ),
    );
  }

  Widget _buildStatusIcon() {
    Color iconColor;
    IconData iconData;

    switch (record.status) {
      case 'present':
        iconColor = Colors.green;
        iconData = Icons.check_circle_outline;
        break;
      case 'absent':
        iconColor = Colors.red;
        iconData = Icons.cancel_outlined;
        break;
      case 'late':
        iconColor = Colors.orange;
        iconData = Icons.info_outline;
        break;
      default:
        iconColor = grey;
        iconData = Icons.help_outline;
    }

    return Icon(iconData, color: iconColor, size: 20.s);
  }

  Widget _buildTimeRow({
    required String label,
    required String time,
    required IconData icon,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, size: 12.s, color: grey),
        SizedBox(width: 4.w),
        Text(
          '$label:',
          style: TextStyle(fontSize: 12.s, color: grey2),
        ),
        SizedBox(width: 4.w),
        Text(
          '$time pm',
          style: TextStyle(
            fontSize: 12.s,
            color: grey2,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  String _getArabicDayName(int weekday) {
    const days = {
      DateTime.monday: 'الإثنين',
      DateTime.tuesday: 'الثلاثاء',
      DateTime.wednesday: 'الأربعاء',
      DateTime.thursday: 'الخميس',
      DateTime.friday: 'الجمعة',
      DateTime.saturday: 'السبت',
      DateTime.sunday: 'الأحد',
    };
    return days[weekday] ?? '';
  }
}
