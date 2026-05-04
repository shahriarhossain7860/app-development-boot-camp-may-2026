// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:mexpense/helpers/navigation_service.dart';

import '../../../../../constants/text_font_style.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../helpers/ui_helpers.dart';

class LogOutDialogWidget extends StatefulWidget {
  const LogOutDialogWidget({super.key});

  @override
  State<LogOutDialogWidget> createState() => _LogOutDialogWidgetState();
}

class _LogOutDialogWidgetState extends State<LogOutDialogWidget> {
  final bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Log Out'.tr,
            style: TextFontStyle.headlineStyleInter26600.copyWith(
              color: AppColors.c000000,
            ),
          ),
          UIHelper.verticalSpace(13.h),
          UIHelper.customDivider(),
          UIHelper.verticalSpace(18.h),
          _isLoading
              ? const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SpinKitCircle(color: AppColors.onBoardingColor, size: 50.0),
                  ],
                )
              : Text(
                  'Are You Sure you Want to log out'.tr,
                  style: TextFontStyle.headlineStyleInter14500,
                ),
          UIHelper.verticalSpace(30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    NavigationService.goBack;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.onBoardingColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 30.w,
                      ),
                      child: Center(
                        child: Text(
                          'Cancel'.tr,
                          style: TextFontStyle.headlineStyleInter16500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              UIHelper.horizontalSpace(10.w),
              Expanded(
                child: GestureDetector(
                  // onTap: () async {
                  //   setState(() {
                  //     _isLoading = true;
                  //   });
                  //   logoutRxObj.logoutRx().then(
                  //     (value) async {
                  //       if (value) {
                  //         ToastUtil.showShortToast("Logout successfully.");
                  //         await appData.write(kKeyIsLoggedIn, false);
                  //         await appData.write(kKeyAccessToken, '');
                  //         setState(() {
                  //           _isLoading = false;
                  //         });

                  //         NavigationService.navigateToReplacement(
                  //             Routes.logInScreen);
                  //       } else {
                  //         setState(() {
                  //           _isLoading = false;
                  //         });
                  //         ToastUtil.showShortToast("Failed to logout.");
                  //       }
                  //     },
                  //   );
                  // },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.onBoardingColor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 10.w,
                      ),
                      child: Center(
                        child: Text(
                          'Yes, Log Out'.tr,
                          style: TextFontStyle.headlineStyleInter16500.copyWith(
                            color: AppColors.onBoardingColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(30.h),
        ],
      ),
    );
  }
}
