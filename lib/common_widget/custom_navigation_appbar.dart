import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

// ignore: must_be_immutable
class CustomNavigationAppbar extends StatelessWidget {
  final String title;
  final String subTitle;
  final String url;
  VoidCallback onTapNotification;

  CustomNavigationAppbar({
    super.key,
    required this.title,
    required this.subTitle,
    required this.url,
    required this.onTapNotification,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        color: AppColors.c37B18C,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UIHelper.verticalSpace(32.h),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(150.r),
                child: CachedNetworkImage(
                  placeholder: (context, url) => CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 25.r,
                    child: const Icon(Icons.person, color: AppColors.cFFFFFF),
                  ),
                  errorWidget: (context, url, error) => CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 25.r,
                    child: const Icon(Icons.error, color: AppColors.cFFFFFF),
                  ),
                  imageUrl: url,
                  width: 50.h,
                  height: 50.h,
                  fit: BoxFit.cover,
                ),
              ),
              UIHelper.horizontalSpace(8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextFontStyle.headlineStylePoppins20600),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    subTitle,
                    style: TextFontStyle.headlineStylePoppins16400.copyWith(
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                ],
              ),
              UIHelper.horizontalSpace(8.w),
              GestureDetector(
                onTap: onTapNotification,
                child: Container(
                  padding: EdgeInsets.all(13.sp),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.cC0E7DB,
                  ),
                  child: SvgPicture.asset(Assets.icon.arrowForward.path),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
