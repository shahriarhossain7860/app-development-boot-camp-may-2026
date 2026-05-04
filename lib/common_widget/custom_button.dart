import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final double? borderRadius;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.borderColor = AppColors.primaryColor,
    this.textColor = AppColors.c000000,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF4A419),
              Color(0xFFDE9517),
            ],
          ),
          border: Border.all(color: borderColor!),
          borderRadius: BorderRadius.circular(borderRadius ?? 100.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Center(
          child: Text(
            text.tr,
            style: TextFontStyle.headlineStyleInter16500
                .copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
