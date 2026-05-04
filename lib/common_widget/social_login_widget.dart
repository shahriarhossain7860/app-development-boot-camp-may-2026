import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class SocialLoginWidget extends StatelessWidget {
  final String iconPath;
  final String text;
  const SocialLoginWidget({
    super.key,
    required this.iconPath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(color: AppColors.cC9DBEE),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath),
          UIHelper.horizontalSpace(16.w),
          Text(
            text,
            style: TextFontStyle.headlineStylepublicSans18400.copyWith(
              color: AppColors.c637381,
            ),
          ),
        ],
      ),
    );
  }
}
