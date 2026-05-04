import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/gen/assets.gen.dart';

// ignore: must_be_immutable
class CustomBackAppbar extends StatelessWidget implements PreferredSizeWidget {
  VoidCallback onTap;
  CustomBackAppbar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: SvgPicture.asset(Assets.icon.arrowForward.path),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
