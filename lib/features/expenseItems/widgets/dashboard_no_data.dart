import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class DashboardNoData extends StatelessWidget {
  const DashboardNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(24.r),
      dashPattern: const [6, 4],
      color: AppColors.cC6C6CD,
      strokeWidth: 1.2,

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 54.h),
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.image.expensesImg.path, width: 80.w),
            UIHelper.verticalSpace(16.h),
            Text(
              'No expenses yet',
              style: TextFontStyle.headlineStyleInter16400.copyWith(
                color: AppColors.c0B1C30,
              ),
              textAlign: TextAlign.center,
            ),
            UIHelper.verticalSpace(4.h),
            Text(
              'Your financial journey starts here. Add your first expense to see where your money goes.',
              style: TextFontStyle.headlineStyleInter16400.copyWith(
                color: AppColors.c45464D,
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
