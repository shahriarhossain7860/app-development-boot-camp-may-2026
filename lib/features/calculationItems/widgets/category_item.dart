// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String iconPath;
  final Color iconColor;
  final Color textColor;
  final Color bgColor;
  final Function()? onTap;
  const CategoryItem({
    super.key,
    required this.name,
    required this.iconPath,
    required this.iconColor,
    required this.textColor,
    this.onTap,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: bgColor,
            ),
            child: SvgPicture.asset(iconPath, color: iconColor),
          ),
          UIHelper.verticalSpace(8.h),
          Text(
            name,
            style: TextFontStyle.headlineStyleInter16400.copyWith(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
