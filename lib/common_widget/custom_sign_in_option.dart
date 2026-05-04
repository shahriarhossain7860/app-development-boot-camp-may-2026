import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

// ignore: must_be_immutable
class CustomSignInOption extends StatelessWidget {
  String imagePath;
  String text;
  VoidCallback onTap;
  CustomSignInOption({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: AppColors.cFFFFFF,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imagePath, width: 24.w),
            UIHelper.horizontalSpace(8.w),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                text,
                style: TextFontStyle.headlineStylepoppins14400.copyWith(
                  color: AppColors.c798090,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
