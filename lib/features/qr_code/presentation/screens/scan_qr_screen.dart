import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/qr_code/presentation/cubit/qr_code_cubit.dart';
import 'package:familyapp/features/qr_code/presentation/cubit/qr_code_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQrScreen extends StatefulWidget {
  const ScanQrScreen({super.key});

  @override
  State<ScanQrScreen> createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  late MobileScannerController controller;
  bool isScanning = true;

  @override
  void initState() {
    super.initState();
    controller = MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
      facing: CameraFacing.back,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (!isScanning) return;

    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final String? code = barcodes.first.rawValue;
      if (code != null) {
        setState(() => isScanning = false);
        context.read<QrCodeCubit>().useQrSession(code);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<QrCodeCubit, QrCodeState>(
      listener: (context, state) {
        if (state is QrCodeScanSuccess) {
          _showResultDialog(
            context,
            success: true,
            message: state.response.message,
          );
        } else if (state is QrCodeScanError) {
          _showResultDialog(context, success: false, message: state.message);
        }
      },
      child: Scaffold(
        backgroundColor: scaffoldc,
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
          child: Stack(
            children: [
              Positioned(
                top: -50.h,
                left: -50.w,
                child: Container(
                  width: 300.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [primary.withOpacity(0.08), white.withOpacity(0)],
                    ),
                  ),
                ),
              ),
              SafeArea(
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
                                    'مسح QR',
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
                                'يمكنك مسح QR لتسجيل الحضور',
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
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 250.s,
                              height: 250.s,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 1,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.r),
                                child: MobileScanner(
                                  controller: controller,
                                  onDetect: _onDetect,
                                ),
                              ),
                            ),
                          ),
                          // Scanner Overlay
                          CustomPaint(
                            painter: ScannerOverlayPainter(),
                            child: Container(),
                          ),
                          // Header Text
                          Positioned(
                            top: 50.h,
                            left: 0,
                            right: 0,
                            child: Column(
                              children: [
                                Text(
                                  'مسح رمز الاستجابة السريعة',
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 18.s,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'ضع رمز الاستجابة السريعة داخل\nالإطار للمسح الضوئي',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: grey, fontSize: 14.s),
                                ),
                              ],
                            ),
                          ),
                          // Bottom Info
                          Positioned(
                            bottom: 100.h,
                            left: 0,
                            right: 0,
                            child: Column(
                              children: [
                                Text(
                                  'رمز المسح.......',
                                  style: TextStyle(color: grey, fontSize: 12.s),
                                ),
                                SizedBox(height: 20.h),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                    vertical: 10.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: white.withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(20.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.05),
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Scan QR code ready',
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14.s,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Icon(
                                        Icons.qr_code_scanner,
                                        color: black,
                                        size: 20.s,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Loading Overlay
              BlocBuilder<QrCodeCubit, QrCodeState>(
                builder: (context, state) {
                  if (state is QrCodeLoading) {
                    return Container(
                      color: black.withOpacity(0.3),
                      child: const Center(
                        child: CircularProgressIndicator(color: primary),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  //****************************************************************************** */

  void _showResultDialog(
    BuildContext context, {
    required bool success,
    required String message,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              success ? Icons.check_circle : Icons.error,
              color: success ? Colors.green : Colors.red,
              size: 60.s,
            ),
            SizedBox(height: 20.h),
            Text(
              success ? 'نجاح' : 'خطأ',
              style: TextStyle(
                fontSize: 18.s,
                fontWeight: FontWeight.bold,
                color: success ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.s),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                setState(() => isScanning = true);
              },
              child: const Text('موافق', style: TextStyle(color: white)),
            ),
          ],
        ),
      ),
    );
  }
}

class ScannerOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final scanAreaSize = 250.s;
    final left = (width - scanAreaSize) / 2;
    final top = (height - scanAreaSize) / 2;
    final rect = Rect.fromLTWH(left, top, scanAreaSize, scanAreaSize);

    // Draw corners - dark red/maroon
    final cornerPaint = Paint()
      ..color = const Color(0xff9B1B48)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final cornerSize = 40.s;

    // Top Left
    canvas.drawLine(
      Offset(left, top),
      Offset(left + cornerSize, top),
      cornerPaint,
    );
    canvas.drawLine(
      Offset(left, top),
      Offset(left, top + cornerSize),
      cornerPaint,
    );

    // Top Right
    canvas.drawLine(
      Offset(left + scanAreaSize, top),
      Offset(left + scanAreaSize - cornerSize, top),
      cornerPaint,
    );
    canvas.drawLine(
      Offset(left + scanAreaSize, top),
      Offset(left + scanAreaSize, top + cornerSize),
      cornerPaint,
    );

    // Bottom Left
    canvas.drawLine(
      Offset(left, top + scanAreaSize),
      Offset(left + cornerSize, top + scanAreaSize),
      cornerPaint,
    );
    canvas.drawLine(
      Offset(left, top + scanAreaSize),
      Offset(left, top + scanAreaSize - cornerSize),
      cornerPaint,
    );

    // Bottom Right
    canvas.drawLine(
      Offset(left + scanAreaSize, top + scanAreaSize),
      Offset(left + scanAreaSize - cornerSize, top + scanAreaSize),
      cornerPaint,
    );
    canvas.drawLine(
      Offset(left + scanAreaSize, top + scanAreaSize),
      Offset(left + scanAreaSize, top + scanAreaSize - cornerSize),
      cornerPaint,
    );

    // Draw scanning line
    final linePaint = Paint()
      ..color = const Color(0xff9B1B48)
      ..strokeWidth = 2;

    canvas.drawLine(
      Offset(left - 5.w, top + scanAreaSize / 2),
      Offset(left + scanAreaSize + 5.w, top + scanAreaSize / 2),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
