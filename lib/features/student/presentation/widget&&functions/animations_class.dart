import 'package:familyapp/core/helper/responsive.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RipplingAttendancePoint extends StatefulWidget {
  final bool isAttended;

  const RipplingAttendancePoint({Key? key, required this.isAttended})
    : super(key: key);

  @override
  _RipplingAttendancePointState createState() =>
      _RipplingAttendancePointState();
}

class _RipplingAttendancePointState extends State<RipplingAttendancePoint>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color baseColor = widget.isAttended ? Colors.green : Colors.red;

    return Skeleton.keep(
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: RipplePainter(_controller.value, color: baseColor),
                child: SizedBox(height: 10.h, width: 10.w),
              );
            },
          ),

          Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
              border: Border.all(color: baseColor, width: 0.5.r),
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
            child: Center(
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  border: Border.all(color: baseColor, width: 0.5.r),
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: Center(
                  child: CircleAvatar(radius: 6.r, backgroundColor: baseColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RipplePainter extends CustomPainter {
  final double animationValue;
  final Color color;

  RipplePainter(this.animationValue, {required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);

    _drawCircle(canvas, center, animationValue, 1);

    double secondCircleValue = (animationValue + 0.5) % 1.0;
    _drawCircle(canvas, center, secondCircleValue, 0.5);
  }

  void _drawCircle(
    Canvas canvas,
    Offset center,
    double value,
    double baseOpacity,
  ) {
    double radius = 8.r + (22.r * value);

    double opacity = (baseOpacity - (1.0 * value)).clamp(0.0, 1.0);

    final Paint paint = Paint()
      ..color = color.withOpacity(opacity)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8.r;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(RipplePainter oldDelegate) {
    return true;
  }
}
