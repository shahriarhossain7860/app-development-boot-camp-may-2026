import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class RateButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const RateButtonWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
            border: Border.all(color: AppColors.onBoardingColor)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 10.w),
          child: Text(
            'Rate'.tr,
            style: TextFontStyle.headlineStyleInter12400.copyWith(
                color: AppColors.onBoardingColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
