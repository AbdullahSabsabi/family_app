import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: scaffoldc,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [secondary1.withOpacity(0.2), scaffoldc],
              stops: const [0.0, 0.4],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                // Custom Header
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
                              Icons.arrow_back_ios_new, // Points right in RTL
                              size: 20.s,
                              color: black,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'تواصل معنا',
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
                        'يمكنك التواصل مع الإدارة عن طريق\nمواقع التواصل الاجتماعي',
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

                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        children: [
                          SizedBox(height: 50.h),
                          Text(
                            'تواصل معنا',
                            style: TextStyle(
                              fontSize: 20.s,
                              fontWeight: FontWeight.bold,
                              color: black,
                              fontFamily: 'Tajwal',
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            'من الاثنين إلى الجمعة، 9:00 ص حتى 6:00 م',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.s,
                              color: black,
                              fontFamily: 'Tajwal',
                            ),
                          ),
                          SizedBox(height: 35.h),

                          // Phone Button
                          GestureDetector(
                            onTap: () => _launchUrl('tel:0991919917'),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 25.w,
                                vertical: 15.h,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [primary, primary1],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: primary.withOpacity(0.3),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '0991919917',
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 16.s,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajwal',
                                    ),
                                  ),
                                  SizedBox(width: 15.w),

                                  Icon(Icons.phone, color: white, size: 16.s),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 60.h),

                          // Social Media List
                          _buildSocialItem(
                            icon: FontAwesomeIcons.envelope,
                            iconColor: Colors.red,
                            title: 'alolamaa.alepposy@gmail.com',
                            onTap: () =>
                                _launchUrl('mailto:alolamaa.alepposy@gmail.com'),
                          ),
                          _buildSocialItem(
                            icon: FontAwesomeIcons.instagram,
                            iconColor: const Color(0xFFE4405F),
                            title: 'olamaa company',
                            onTap: () => _launchUrl('https://www.instagram.com/alolamaa.aleppo?igsh=MTBld3RtZm42amkxbg=='),
                          ),
                          _buildSocialItem(
                            icon: FontAwesomeIcons.facebook,
                            iconColor: const Color(0xFF1877F2),
                            title: 'olamaa company',
                            onTap: () => _launchUrl('https://www.facebook.com/share/1CkYmjBpdZ/'),
                          ),
                          _buildSocialItem(
                            icon: FontAwesomeIcons.whatsapp,
                            iconColor: const Color(0xFF25D366),
                            title: '0991919917',
                            onTap: () => _launchUrl('https://wa.me/0991919917'),
                          ),
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

  Widget _buildSocialItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 50.s,
              height: 50.s,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Icon(icon, color: iconColor, size: 30.s),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15.s,
                  color: black,
                  fontFamily: 'Tajwal',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
