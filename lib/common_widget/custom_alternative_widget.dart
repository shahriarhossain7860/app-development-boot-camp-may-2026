import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

// ignore: must_be_immutable
class CustomAlternativeWidget extends StatelessWidget {
  String text;
  CustomAlternativeWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 100.w, height: 1.h, color: AppColors.cC1C4CC),
        UIHelper.horizontalSpace(16.w),
        Text(
          text,
          style: TextFontStyle.headlineStylepoppins14400.copyWith(
            color: AppColors.c154A3A,
          ),
        ),
        UIHelper.horizontalSpace(16.w),
        Container(width: 100.w, height: 1.h, color: AppColors.cC1C4CC),
      ],
    );
  }
}
