import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/assets.gen.dart';

// ignore: must_be_immutable
class CustomAppbarCircleBack extends StatelessWidget implements PreferredSize {
  String title;
  void Function()? onTap;
  CustomAppbarCircleBack({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(Assets.icon.arrowForward.path),
        ),
      ),
      title: Text(title, style: TextFontStyle.headlineStylePoppins18600),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
