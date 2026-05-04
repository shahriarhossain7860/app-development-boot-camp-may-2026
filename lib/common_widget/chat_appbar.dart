// import 'package:bruc3wayn321_app/gen/assets.gen.dart';
// import 'package:bruc3wayn321_app/helpers/navigation_service.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';


// class ChatAppbar extends StatelessWidget implements PreferredSizeWidget {
//   final String url;
//   final String name;
//   const ChatAppbar({super.key, required this.url, required this.name});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       leading: GestureDetector(
//         onTap: () {
//           NavigationService.goBack;
//         },
//         child: Padding(
//           padding: EdgeInsets.only(left: 20.w),
//           child: SvgPicture.asset(
//             Assets.icon.circleBackIcon.path,
//           ),
//         ),
//       ),
//       title: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(150.r),
//             child: CachedNetworkImage(
//               placeholder: (context, url) => CircleAvatar(
//                 backgroundColor: AppColors.primaryColor,
//                 radius: 25.r,
//                 child: const Icon(Icons.person, color: AppColors.cFFFFFF),
//               ),
//               errorWidget: (context, url, error) => CircleAvatar(
//                   backgroundColor: AppColors.primaryColor,
//                   radius: 25.r,
//                   child: Image.network(
//                       'https://cdn-icons-png.flaticon.com/512/6858/6858504.png')),
//               imageUrl: url,
//               width: 40.h,
//               height: 40.h,
//               fit: BoxFit.cover,
//             ),
//           ),
//           UIHelper.horizontalSpace(10.w),
//           Text(name, style: const TextStyle(color: AppColors.c000000)),
//         ],
//       ),
//       centerTitle: true,
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
