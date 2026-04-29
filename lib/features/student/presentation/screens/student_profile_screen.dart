import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:familyapp/features/auth/presentation/cubit/auth_state.dart';
import 'package:familyapp/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StudentProfileScreen extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final String branch;

  const StudentProfileScreen({
    super.key,
    required this.name,
    this.imageUrl,
    required this.branch,
  });

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          // Immediately go to start screen and clear all routes
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const StartScreen()),
            (route) => false,
          );
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
              colors: [secondary1.withOpacity(0.3), scaffoldc],
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
                              SizedBox(width: 10.w),
                              Text(
                                'بروفايل الطالب',
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
                            'يمكنك الاطلاع على معلوماتك الشخصية',
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
                // Header
                SizedBox(height: 40.h),

                // Content Card
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          SizedBox(height: 10.h),

                          // Profile Image with Fallback
                          Container(
                            width: 150.s,
                            height: 150.s,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: primary.withOpacity(0.5),
                                width: 4,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ClipOval(
                              child: (imageUrl != null && imageUrl!.isNotEmpty)
                                  ? CachedNetworkImage(
                                      imageUrl: imageUrl!,
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          const Center(
                                            child: CircularProgressIndicator(
                                              color: primary,
                                              strokeWidth: 2,
                                            ),
                                          ),
                                      errorWidget: (context, url, error) =>
                                          _buildImagePlaceholder(),
                                    )
                                  : _buildImagePlaceholder(),
                            ),
                          ),

                          SizedBox(height: 50.h),

                          // Info Display Items
                          _buildInfoItem(
                            label: 'الاسم الكامل',
                            value: name.isEmpty ? 'اسم الطالب' : name,
                            icon: Icons.person_rounded,
                          ),

                          SizedBox(height: 25.h),

                          _buildInfoItem(
                            label: 'الفرع الأكاديمي',
                            value: branch.isEmpty ? 'غير محدد' : branch,
                            icon: Icons.school_rounded,
                          ),

                          SizedBox(height: 80.h),

                          // Logout Button
                          GestureDetector(
                            onTap: () => _showLogoutDialog(context),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 15.h,
                                horizontal: 25.w,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.logout_rounded,
                                    color: Colors.red,
                                    size: 24.s,
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    'تسجيل الخروج',
                                    style: TextStyle(
                                      fontSize: 16.s,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajwal',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 40.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImagePlaceholder() {
    return Container(
      color: secondary.withOpacity(0.2),
      child: Icon(Icons.person, color: primary.withOpacity(0.5), size: 60.s),
    );
  }

  Widget _buildInfoItem({
    required String label,
    required String value,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 13.s,
            color: grey,
            fontWeight: FontWeight.w600,
            fontFamily: 'Tajwal',
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(color: grey.withOpacity(0.1)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(icon, color: primary, size: 22.s),
              SizedBox(width: 15.w),
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 15.s,
                    color: black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Tajwal',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        title: const Text(
          'تأكيد الخروج',
          textAlign: TextAlign.right,
          style: TextStyle(fontFamily: 'Tajwal', fontWeight: FontWeight.bold),
        ),
        content: const Text(
          'هل أنت متأكد أنك تريد تسجيل الخروج من التطبيق؟ سيتم مسح بيانات الدخول الحالية.',
          textAlign: TextAlign.right,
          style: TextStyle(fontFamily: 'Tajwal'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text(
              'إلغاء',
              style: TextStyle(color: grey, fontFamily: 'Tajwal'),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.read<AuthCubit>().logout();
            },
            child: const Text(
              'تسجيل خروج',
              style: TextStyle(
                color: Colors.red,
                fontFamily: 'Tajwal',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
