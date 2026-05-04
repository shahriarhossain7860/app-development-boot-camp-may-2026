// import 'package:bruc3wayn321_app/common_widget/dialog_widget.dart';
// import 'package:bruc3wayn321_app/common_widget/log_out_dialog_widget.dart';
// import 'package:bruc3wayn321_app/constants/app_constants.dart';
// import 'package:bruc3wayn321_app/gen/assets.gen.dart';
// import 'package:bruc3wayn321_app/helpers/di.dart';
// import 'package:bruc3wayn321_app/helpers/navigation_service.dart';
// import 'package:bruc3wayn321_app/helpers/ui_helpers.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:url_launcher/url_launcher.dart';

// class MyAppBar extends StatelessWidget {
//   final Widget searchField;
//   const MyAppBar({super.key, required this.searchField});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         left: 16.w,
//         right: 16.w,
//         top: 55.h,
//       ),
//       child: Row(
//         children: [
//           GestureDetector(
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return DialogWidget(
//                     setting: () {
//                       // NavigationService.navigateTo(Routes.settingScreen);
//                     },
//                     logOut: () {
//                       NavigationService.goBack;
//                       showModalBottomSheet(
//                         context: context,
//                         shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.vertical(top: Radius.circular(16.r)),
//                         ),
//                         builder: (context) {
//                           return const LogOutDialogWidget();
//                         },
//                       );
//                     },
//                   );
//                 },
//               );
//             },
//             child: appData.read(profileImage) == null
//                 ? ClipRRect(
//                     borderRadius: BorderRadius.circular(150.r),
//                     child: Image.asset(
//                       Assets.image.bruceLogo.path,
//                       width: 50.h,
//                       height: 50.h,
//                       fit: BoxFit.cover,
//                     ),
//                   )
//                 : ClipRRect(
//                     borderRadius: BorderRadius.circular(150.r),
//                     child: CachedNetworkImage(
//                       placeholder: (context, url) {
//                         return ClipRRect(
//                           borderRadius: BorderRadius.circular(150.r),
//                           child: Image.asset(
//                             Assets.image.profileAvatar.path,
//                             width: 50.h,
//                             height: 50.h,
//                             fit: BoxFit.cover,
//                           ),
//                         );
//                       },
//                       errorWidget: (context, url, error) {
//                         return ClipRRect(
//                           borderRadius: BorderRadius.circular(150.r),
//                           child: Image.asset(
//                             Assets.image.profileAvatar.path,
//                             width: 50.h,
//                             height: 50.h,
//                             fit: BoxFit.cover,
//                           ),
//                         );
//                       },
//                       imageUrl: appData.read(profileImage),
//                       width: 50.h,
//                       height: 50.h,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//           ),
//           UIHelper.horizontalSpace(8.w),
//           Expanded(
//             child: searchField,
//           ),
//           UIHelper.horizontalSpace(8.w),
//           CallProviderWidget(
//             call: () {
//               showModalBottomSheet(
//                 context: context,
//                 backgroundColor: AppColors.categoriesBg,
//                 shape: RoundedRectangleBorder(
//                   borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(20.r)),
//                 ),
//                 builder: (context) {
//                   return CallProviderBottomSheet(
//                       callPhone: () async {
//                         const phoneNumber = 'tel:+25377220466';
//                         if (await canLaunchUrl(Uri.parse(phoneNumber))) {
//                           await launchUrl(Uri.parse(phoneNumber));
//                         } else {
//                           throw 'Could not launch $phoneNumber';
//                         }
//                       },
//                       callWhatsApp: () async {
//                         const phone = '+25377220466';
//                         final message =
//                             Uri.encodeComponent("Hello, I need assistance");
//                         final whatsappUrl =
//                             "https://wa.me/$phone?text=$message";

//                         if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
//                           await launchUrl(Uri.parse(whatsappUrl),
//                               mode: LaunchMode.externalApplication);
//                         } else {
//                           throw 'Could not launch WhatsApp';
//                         }
//                       },
//                       backButton: CustomButton(
//                           onTap: () {
//                             NavigationService.goBack;
//                           },
//                           text: 'Back'.tr));
//                 },
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
