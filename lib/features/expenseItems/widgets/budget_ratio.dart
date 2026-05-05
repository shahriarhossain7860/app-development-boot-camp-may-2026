import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/common_widget/custom_linear_progress.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class BudgetRatio extends StatelessWidget {
  final double value;
  final double spent;
  final double limits;
  const BudgetRatio({
    super.key,
    required this.value,
    required this.spent,
    required this.limits,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.7),
            offset: Offset(-2, -2),
            blurRadius: 6,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            offset: Offset(4, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        children: [
          CustomLinearProgress(value: value),
          UIHelper.verticalSpace(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Spent: \$$spent',
                style: TextFontStyle.headlineStyleInter16400.copyWith(
                  color: AppColors.c45464D,
                ),
              ),
              Text(
                'Limit: \$$limits',
                style: TextFontStyle.headlineStyleInter16400.copyWith(
                  color: AppColors.c45464D,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
