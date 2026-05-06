import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class MonthlySpendWidget extends StatelessWidget {
  final double spend;
  const MonthlySpendWidget({super.key, required this.spend});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColors.cFFFFFF,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.7),
                  offset: const Offset(-2, -2),
                  blurRadius: 6,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  offset: const Offset(4, 4),
                  blurRadius: 12,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Monthly Spend',
                  style: TextFontStyle.headlineStyleInter14500.copyWith(
                    color: AppColors.c45464D,
                    fontSize: 12.sp,
                  ),
                ),
                UIHelper.verticalSpace(8.h),
                Text(
                  '\$$spend',
                  style: TextFontStyle.headlineStyleInter26600.copyWith(
                    fontSize: 36.sp,
                    color: AppColors.c000000.withOpacity(0.3),
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
