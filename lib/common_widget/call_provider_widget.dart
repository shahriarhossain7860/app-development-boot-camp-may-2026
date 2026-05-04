// // ignore_for_file: deprecated_member_use

// import 'package:flutter/cupertino.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../gen/assets.gen.dart';
// import '../gen/colors.gen.dart';

// class CallProviderWidget extends StatelessWidget {
//   final VoidCallback call;
//   final Color? bgColor;
//   const CallProviderWidget({
//     super.key,
//     required this.call,
//     this.bgColor = AppColors.socialBg,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: call,
//       child: Container(
//         decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
//         child: Padding(
//           padding: EdgeInsets.all(11.sp),
//           child: SvgPicture.asset(
//             Assets.icon.call.path,
//             color: AppColors.onBoardingColor,
//             width: 28.w,
//             height: 28.w,
//           ),
//         ),
//       ),
//     );
//   }
// }
