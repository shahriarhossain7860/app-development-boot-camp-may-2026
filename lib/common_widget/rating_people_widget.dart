// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../constants/text_font_style.dart';
// import '../helpers/ui_helpers.dart';

// class RatingPeopleWidget extends StatelessWidget {
//   final Widget rating;
//   final String title;
//   final String description;
//   final String imagePath;
//   final String name;
//   final String date;
//   final Widget devider;

//   const RatingPeopleWidget({
//     super.key,
//     required this.rating,
//     required this.title,
//     required this.description,
//     required this.imagePath,
//     required this.name,
//     required this.date,
//     required this.devider,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 10.h),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           rating,
//           UIHelper.verticalSpace(4.h),
//           Text(
//             title,
//             style: TextFontStyle.headlineStyleInter14500,
//           ),
//           UIHelper.verticalSpace(4.h),
//           Text(
//             description,
//             style: TextFontStyle.headlineStyleInter12400,
//             maxLines: 2,
//           ),
//           UIHelper.verticalSpace(8.h),
//           Row(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(150.r),
//                 child: CachedNetworkImage(
//                   placeholder: (context, url) {
//                     return Image.asset(
//                       Assets.image.profileAvatar.path,
//                       height: 35.h,
//                       width: 35.h,
//                       fit: BoxFit.cover,
//                     );
//                   },
//                   errorWidget: (context, url, error) {
//                     return Image.asset(
//                       Assets.image.profileAvatar.path,
//                       height: 35.h,
//                       width: 35.h,
//                       fit: BoxFit.cover,
//                     );
//                   },
//                   imageUrl: imagePath,
//                   height: 35.h,
//                   width: 35.h,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               UIHelper.horizontalSpace(5.w),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: TextFontStyle.headlineStyleInter12400,
//                   ),
//                   UIHelper.verticalSpace(2.h),
//                   Text(
//                     date,
//                     style: TextFontStyle.headlineStyleInter12400,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           UIHelper.verticalSpace(18.h),
//           devider,
//           UIHelper.verticalSpace(18.h),
//         ],
//       ),
//     );
//   }
// }
