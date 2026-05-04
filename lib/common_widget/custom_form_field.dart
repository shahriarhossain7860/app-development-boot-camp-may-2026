import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomFormField extends StatelessWidget {
  final String name;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final Color? borderColor;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final int? maxLine;
  final BorderRadius? borderRadius;
  final EdgeInsets? contentPadding;
  final TextInputAction? textInputAction;

  const CustomFormField({
    super.key,
    required this.name,
    required this.suffixIcon,
    this.obscureText = false,
    this.controller,
    required this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.maxLine = 1,
    this.borderColor = AppColors.socialText,
    this.borderRadius,
    this.contentPadding,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.c000000,
      maxLines: maxLine,
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      textInputAction: textInputAction,
      style:
          TextFontStyle.headlineStyleInter16500.copyWith(color: Colors.black),
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.cFFFFFF,
          hintText: name,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintStyle: TextFontStyle.headlineStyleInter16500
              .copyWith(color: AppColors.socialText),
          border: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16.r),
              borderSide: const BorderSide(color: AppColors.socialText)),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: AppColors.socialText),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16.r),
            borderSide: BorderSide(color: borderColor!),
          ),
          contentPadding: contentPadding),
    );
  }
}
