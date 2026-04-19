import 'package:familyapp/core/helper/constant.dart';
import 'package:familyapp/core/helper/responsive.dart';
import 'package:flutter/material.dart';

class MyFunL {
  Widget buildLabel(String label) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16.s,
            fontWeight: FontWeight.w500,
            color: black,
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
    String hint, {
    bool isPassword = false,
    required TextEditingController controller,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: grey, width: 1.5),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: grey, fontSize: 12.s),
          contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
