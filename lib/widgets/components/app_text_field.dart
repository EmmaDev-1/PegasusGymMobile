// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Function(String)? onChanged;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType fieldType;
  final double cornerRadius;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    required this.fieldType,
    this.cornerRadius = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.5.h,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkGrey.withOpacity(0.2),
            spreadRadius: 0.9,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        style: TextStyle(
          color: AppColors.darkGrey,
          fontSize: 14.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
            borderSide: const BorderSide(color: AppColors.white, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
            borderSide: BorderSide(
              color: AppColors.accent.withOpacity(0.4),
              width: 1.8,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: AppColors.mediumGrey,
          ),
          contentPadding: EdgeInsets.all(2.h),
          prefixIcon:
              prefixIcon != null
                  ? Icon(prefixIcon, size: 20.sp, color: AppColors.darkGrey)
                  : null,
          suffixIcon: suffixIcon,
        ),
        keyboardType: fieldType,
      ),
    );
  }
}
