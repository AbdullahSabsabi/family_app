import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:familyapp/core/helper/constant.dart' as Colors;
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:flutter/material.dart';

class Student {
  final int id;
  final String name;
  final String imageUrl;
  final Color color;
  Student({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.color,
  });
}

//**************************************************************************************/

class DynamicStudentScroll extends StatefulWidget {
  final List<Student> students;
  final Function(int) onStudentTap;
  const DynamicStudentScroll({
    super.key,
    required this.students,
    required this.onStudentTap,
  });

  @override
  State<DynamicStudentScroll> createState() => _DynamicStudentScrollState();
}

class _DynamicStudentScrollState extends State<DynamicStudentScroll> {
  late PageController _pageController;
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.45)
      ..addListener(() {
        setState(() {
          _currentPage = _pageController.page!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.students.length,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          double relativePosition = index - _currentPage;
          double scale = max(0.8, 1 - (relativePosition.abs() * 0.2));
          double rotation = relativePosition * 0.2;
          double translateY = relativePosition.abs() * 10.h;

          return Center(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..translate(0.0, translateY)
                ..scale(scale)
                ..rotateZ(rotation),
              alignment: Alignment.center,
              child: StudentCard(
                name: widget.students[index].name,
                borderColor: widget.students[index].color,
                imageUrl: widget.students[index].imageUrl,
                onTap: () => widget.onStudentTap(widget.students[index].id),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
//************************************************************************************* */

class StudentCard extends StatelessWidget {
  final String name;
  final Color borderColor;
  final String imageUrl;
  final VoidCallback onTap;

  const StudentCard({
    required this.name,
    required this.borderColor,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150.w,
        height: 200.h,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: borderColor, width: 2.w),
          boxShadow: [
            BoxShadow(color: grey3, blurRadius: 10, offset: const Offset(0, 4)),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            CircleAvatar(
              radius: 24.r,
              backgroundColor: secondary,
              child: (imageUrl.isEmpty)
                  ? Icon(Icons.person, color: primary, size: 20.s)
                  : ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: (imageUrl.startsWith('http'))
                            ? imageUrl
                            : "$baseUrl${imageUrl.startsWith('/') ? "" : "/"}$imageUrl",
                        width: 60.r,
                        height: 60.r,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) =>
                            Icon(Icons.person, color: primary, size: 20.s),
                      ),
                    ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                name,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 10.s,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Tajwal',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Color> cardColors = [
  const Color(0xffFBD0E1),
  const Color(0xffD0E1FB),
  const Color(0xffE1FBD0),
  const Color(0xffFBE7D0),
  const Color(0xffD0FBF1),
  const Color(0xffE7D0FB),
];
