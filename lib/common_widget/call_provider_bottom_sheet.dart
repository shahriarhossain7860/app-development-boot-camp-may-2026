// import 'package:flutter/cupertino.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// import '../constants/text_font_style.dart';
// import '../gen/assets.gen.dart';
// import '../gen/colors.gen.dart';
// import '../helpers/ui_helpers.dart';

// class CallProviderBottomSheet extends StatelessWidget {
//   final VoidCallback callPhone;
//   final VoidCallback callWhatsApp;
//   final Widget backButton;
//   const CallProviderBottomSheet({
//     super.key,
//     required this.callPhone,
//     required this.callWhatsApp,
//     required this.backButton,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           UIHelper.verticalSpace(6.h),
//           Container(
//             decoration: BoxDecoration(
//                 color: AppColors.cFFFFFF,
//                 borderRadius: BorderRadius.circular(12.r)),
//             child: Padding(
//               padding: EdgeInsets.all(18.sp),
//               child: Column(
//                 children: [
//                   GestureDetector(
//                     onTap: callPhone,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SvgPicture.asset(Assets.icon.phone.path),
//                         UIHelper.horizontalSpace(6.w),
//                         Text(
//                           'Call an Advisor'.tr,
//                           style: TextFontStyle.headlineStyleInter18600,
//                         )
//                       ],
//                     ),
//                   ),
//                   UIHelper.verticalSpace(14.h),
//                   UIHelper.customDivider(),
//                   UIHelper.verticalSpace(14.h),
//                   GestureDetector(
//                     onTap: callWhatsApp,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SvgPicture.asset(Assets.icon.whatsApp.path),
//                         UIHelper.horizontalSpace(6.w),
//                         Text(
//                           'Chat on WhatsApp'.tr,
//                           style: TextFontStyle.headlineStyleInter18600,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           UIHelper.verticalSpace(10.h),
//           backButton,
//           UIHelper.verticalSpace(16.h),
//         ],
//       ),
//     );
//   }
// }
