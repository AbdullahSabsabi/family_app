import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:flutter/material.dart';

class MyFunF {
  Widget buildAmountRow(String amount, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            amount,
            style: TextStyle(
              fontSize: 18.s,
              fontWeight: FontWeight.w500,
              color: grey2,
              fontFamily: 'Tajwal',
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w500,
              color: grey2,
              fontFamily: 'Tajwal',
            ),
          ),
        ),
      ],
    );
  }

  //************************************************************************************* */

  Widget buildProgressBar(double percentage) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: Container(
        width: double.infinity,
        height: 6.h,
        color: grey3,
        child: FractionallySizedBox(
          alignment: Alignment.centerRight,
          widthFactor: (percentage / 100).clamp(0, 1),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [primary, primary1],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),

              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
      ),
    );
  }
  //************************************************************************************* */

  Widget buildActionArrowWithBlur() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32.5.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: 65.w,
          height: 65.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primary, primary1],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: Icon(
            Icons.keyboard_double_arrow_right_outlined,
            color: Color(0xffF2F2F2),
            size: 25.s,
          ),
        ),
      ),
    );
  }

  //************************************************************************************* */

  Widget buildUserAvatar(String? url) {
    return CircleAvatar(
      radius: 25.r,
      backgroundColor: secondary,
      child: (url == null || url.isEmpty)
          ? Icon(Icons.person, color: primary, size: 30.s)
          : ClipOval(
              child: CachedNetworkImage(
                imageUrl: (url.startsWith('http'))
                    ? url
                    : "$baseUrl${url.startsWith('/') ? "" : "/"}$url",
                width: 56.r,
                height: 56.r,
                fit: BoxFit.cover,
                placeholder: (context, url) => const CircularProgressIndicator(
                  strokeWidth: 2,
                  color: primary,
                ),
                errorWidget: (context, url, error) =>
                    Icon(Icons.person, color: grey1, size: 30.s),
              ),
            ),
    );
  }

  //************************************************************************************* */
}
