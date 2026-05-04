import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../helpers/ui_helpers.dart';

class DialogWidget extends StatelessWidget {
  final VoidCallback setting;
  final VoidCallback logOut;
  const DialogWidget({
    super.key, required this.setting, required this.logOut,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap:setting,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(Assets.icon.arrowForward.path),
                    UIHelper.horizontalSpace(4.w),
                    Text('Setting'.tr,style: TextFontStyle.headlineStyleInter14500,)
                  ],
                ),
              ),
              UIHelper.verticalSpace(10.h),
              UIHelper.customDivider(),
              UIHelper.verticalSpace(10.h),
              GestureDetector(
                onTap: logOut,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(Assets.icon.arrowForward.path),
                    UIHelper.horizontalSpace(4.w),
                    Text('Log Out'.tr,style: TextFontStyle.headlineStyleInter14500,)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
