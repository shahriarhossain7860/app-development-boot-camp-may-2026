import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';
import '../helpers/navigation_service.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? color;
  final Color? iconColor;
  final Color? textColor;
  const CustomAppBar({
    super.key,
    required this.title,
    this.color = AppColors.cFFFFFF,
    this.iconColor = AppColors.c000000,
    this.textColor = AppColors.appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: color,
      leading: GestureDetector(
        onTap: () {
          NavigationService.goBack;
        },
        child: Icon(Icons.arrow_back_ios_rounded, color: iconColor),
      ),
      title: Text(
        title.tr,
        style: TextFontStyle.headlineStyleInter16500.copyWith(color: textColor),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
