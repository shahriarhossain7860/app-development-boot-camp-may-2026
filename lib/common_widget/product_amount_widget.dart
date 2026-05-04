import 'package:flutter/cupertino.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class ProductAmount extends StatelessWidget {
  final String offer;
  final String price;
  final String discount;

  const ProductAmount({
    super.key,
    required this.offer,
    required this.price,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: offer,
              style: TextFontStyle.headlineStyleInter16500.copyWith(
                color: AppColors.c000000,
              )),
          TextSpan(
            text: price,
            style: TextFontStyle.headlineStyleInter10500
                .copyWith(decoration: TextDecoration.lineThrough),
          ),
          TextSpan(
              text: discount,
              style: TextFontStyle.headlineStyleInter10500
                  .copyWith(color: AppColors.onBoardingColor)),
        ])),
      ],
    );
  }
}
