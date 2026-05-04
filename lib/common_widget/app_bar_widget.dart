import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';
import '../helpers/navigation_service.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? color;
  final Color? iconColor;
  final Color? textColor;
  const AppBarWidget({
    super.key,
    required this.title,
    this.color = AppColors.categoriesBg,
    this.iconColor = AppColors.c000000,
    this.textColor = AppColors.appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: color,
      leading: GestureDetector(
        onTap: () {
          NavigationService.goBack;
        },
        child: Icon(Icons.arrow_back, color: iconColor),
      ),
      title: Text(
        title.tr,
        style: TextFontStyle.headlineStyleInter18600
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}