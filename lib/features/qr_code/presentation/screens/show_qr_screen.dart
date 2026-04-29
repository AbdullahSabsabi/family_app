import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:dio/dio.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/core/helper/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class ShowQrScreen extends StatefulWidget {
  final String qrUrl;
  final String studentName;
  final String? profilePhoto;
  final dynamic studentId;

  const ShowQrScreen({
    super.key,
    required this.qrUrl,
    required this.studentName,
    this.profilePhoto,
    this.studentId,
  });

  @override
  State<ShowQrScreen> createState() => _ShowQrScreenState();
}

class _ShowQrScreenState extends State<ShowQrScreen> {
  Uint8List? _imageBytes;
  File? _cachedFile;
  bool _isLoading = true;
  String? _errorMessage = null;
  bool _isSvg = false;
  bool _isSharing = false;
  final GlobalKey _captureKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _loadFromCacheAndFetch();
  }

  Future<File> _getCacheFile(bool isSvg) async {
    final directory = await getApplicationDocumentsDirectory();
    final idStr = widget.studentId?.toString() ?? 'temp';
    final sanitizedId = idStr.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_');
    final ext = isSvg ? 'svg' : 'png';
    return File('${directory.path}/qr_cache_$sanitizedId.$ext');
  }

  Future<void> _loadFromCacheAndFetch() async {
    try {
      final bool svgHint = widget.qrUrl.toLowerCase().contains('.svg');
      final cacheFile = await _getCacheFile(svgHint);
      final otherFile = await _getCacheFile(!svgHint);

      File? fileToLoad;
      if (await cacheFile.exists()) {
        fileToLoad = cacheFile;
      } else if (await otherFile.exists()) {
        fileToLoad = otherFile;
      }

      if (fileToLoad != null && mounted) {
        final bytes = await fileToLoad.readAsBytes();
        setState(() {
          _cachedFile = fileToLoad;
          _imageBytes = bytes;
          _isSvg = fileToLoad!.path.endsWith('.svg');
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint("Error loading QR from cache: $e");
    }

    if (mounted) {
      _fetchQrImage();
    }
  }

  Future<void> _fetchQrImage() async {
    try {
      if (_cachedFile == null && mounted) {
        setState(() {
          _isLoading = true;
          _errorMessage = null;
        });
      }

      final dio = getIt<Dio>();
      final response = await dio.get<List<int>>(
        widget.qrUrl,
        options: Options(
          responseType: ResponseType.bytes,
          validateStatus: (status) => status == 200,
        ),
      );

      if (response.data != null) {
        final bytes = Uint8List.fromList(response.data!);
        final contentType = response.headers.value('content-type');
        final isSvg = contentType?.contains('svg') == true ||
            widget.qrUrl.toLowerCase().contains('.svg');

        // Save to cache
        try {
          final cacheFile = await _getCacheFile(isSvg);
          await cacheFile.writeAsBytes(bytes);
          
          // Delete the other type if it exists to avoid confusion
          final otherFile = await _getCacheFile(!isSvg);
          if (await otherFile.exists()) await otherFile.delete();
          
          if (mounted) {
            setState(() {
              _cachedFile = cacheFile;
              _imageBytes = bytes;
              _isSvg = isSvg;
              _isLoading = false;
            });
          }
        } catch (e) {
          debugPrint("Error saving to cache: $e");
        }
      }
    } catch (e) {
      if (_cachedFile == null && mounted) {
        setState(() {
          _errorMessage = "حدث خطأ أثناء الاتصال بالسيرفر";
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _shareQrImage() async {
    try {
      setState(() => _isSharing = true);

      // التقاط محتوى البرواز (الكرت + الـ QR) كصورة
      RenderRepaintBoundary? boundary =
          _captureKey.currentContext?.findRenderObject()
              as RenderRepaintBoundary?;
      if (boundary == null) return;

      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData = await image.toByteData(
        format: ui.ImageByteFormat.png,
      );
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/student_full_qr.png').create();
      await file.writeAsBytes(pngBytes);

      await Share.shareXFiles([
        XFile(file.path, mimeType: 'image/png'),
      ], text: 'QR Code الخاص بالطالب: ${widget.studentName}');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('حدث خطأ أثناء محاولة المشاركة')),
      );
    } finally {
      setState(() => _isSharing = false);
    }
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
                    colors: [
                      primary.withOpacity(0.08),
                      Colors.white.withOpacity(0),
                    ],
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
                                  'عرض QR',
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
                              'يمكنك عرض QR الخاص بالطالب',
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
                    child: RefreshIndicator(
                      onRefresh: _fetchQrImage,
                      color: primary,
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            SizedBox(height: 30.h),
                            _buildStudentCard(),
                            SizedBox(height: 50.h),
                            // التقاط مربع الـ QR فقط مع محيطه
                            RepaintBoundary(
                              key: _captureKey,
                              child: Container(
                                color: scaffoldc, // خلفية نظيفة حول الكود
                                padding: EdgeInsets.all(15.s),
                                child: _buildQrSection(),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            _buildActionButtons(),
                            SizedBox(height: 50.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStudentCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      height: 80.h,
      decoration: BoxDecoration(
        color: primary, // الخلفية الأرجوانية للطرف اليمين
        borderRadius: BorderRadius.circular(25.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 40.w),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  bottomLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r), // المنحنى الدائري
                  bottomRight: Radius.circular(25.r),
                ),
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  // الصورة الشخصية
                  Container(
                    width: 70.s,
                    height: 70.s,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                        ),
                      ],
                      image: widget.profilePhoto != null
                          ? DecorationImage(
                              image: NetworkImage(widget.profilePhoto!),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: widget.profilePhoto == null
                        ? Icon(Icons.person, color: primary, size: 35.s)
                        : null,
                  ),
                  SizedBox(width: 15.w),
                  // الاسم
                  Expanded(
                    child: Text(
                      widget.studentName,
                      style: TextStyle(
                        color: black,
                        fontSize: 18.s,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(width: 5.w),
                ],
              ),
            ),
          ),
          // المساحة الأرجوانية اللي بتبقى ع اليمين
        ],
      ),
    );
  }

  Widget _buildQrSection() {
    return Container(
      width: 300.s,
      height: 300.s,
      padding: EdgeInsets.all(18.s),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [primary.withOpacity(0.25), primary.withOpacity(0.20)],
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(22.s),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              secondary1.withOpacity(0.02),
              primary.withOpacity(0.1),
            ],
          ),
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
              color: primary.withOpacity(0.05),
              blurRadius: 50,
              spreadRadius: 3,
            ),
          ],
        ),
        child: _isLoading && _cachedFile == null
            ? Center(
                child: CircularProgressIndicator(
                  color: primary,
                  strokeWidth: 3,
                ),
              )
            : _errorMessage != null && _cachedFile == null
                ? Center(
                    child: Text(_errorMessage!, textAlign: TextAlign.center))
                : _isSvg
                    ? (_cachedFile != null
                        ? SvgPicture.file(_cachedFile!, fit: BoxFit.contain)
                        : SvgPicture.memory(_imageBytes!, fit: BoxFit.contain))
                    : (_cachedFile != null
                        ? Image.file(_cachedFile!, fit: BoxFit.contain)
                        : Image.memory(_imageBytes!, fit: BoxFit.contain)),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCircleButton(
          icon: _isSharing ? Icons.hourglass_empty_rounded : Icons.telegram,
          label: 'مشاركة',
          onTap: _isSharing ? () {} : _shareQrImage,
        ),
      ],
    );
  }

  Widget _buildCircleButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22.r),
      child: Container(
        width: 100.s,
        height: 100.s,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [primary, primary1],
          ),
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
              color: primary.withOpacity(0.3),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 32.s),
            SizedBox(height: 8.h),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.s,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
