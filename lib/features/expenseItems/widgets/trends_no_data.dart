import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class TrendsNoData extends StatelessWidget {
  const TrendsNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12.r),
      dashPattern: const [6, 4],
      color: AppColors.cC6C6CD,
      strokeWidth: 1.2,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(32.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.cFFFFFF,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Assets.image.trendsDataImg.path, width: 64.w),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    'No data available',
                    style: TextFontStyle.headlineStyleInter14500.copyWith(
                      color: AppColors.c0B1C30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    'Add your first expense to see trends',
                    style: TextFontStyle.headlineStyleInter14400.copyWith(
                      color: AppColors.c45464D,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
