import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class TotalBudgetWidget extends StatelessWidget {
  final double budget;
  const TotalBudgetWidget({super.key, required this.budget});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(32.sp),
            decoration: BoxDecoration(
              color: AppColors.c131B2E,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TOTAL BALANCE',
                  style: TextFontStyle.headlineStyleInter16400.copyWith(
                    color: AppColors.c7C839B,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                Text(
                  '\$$budget',
                  style: TextFontStyle.headlineStyleInter16400.copyWith(
                    color: AppColors.cFFFFFF,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
