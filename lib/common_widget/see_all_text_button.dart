import 'package:flutter/material.dart';
import '../constants/text_font_style.dart';

class SeeAllTextButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const SeeAllTextButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextFontStyle.headlineStyleInter18600,
        ),
        // GestureDetector(
        //     onTap: onTap,
        //     child: Text(
        //       'See All',
        //       style: TextFontStyle.headlineStyleInter14400,
        //     ))
      ],
    );
  }
}
