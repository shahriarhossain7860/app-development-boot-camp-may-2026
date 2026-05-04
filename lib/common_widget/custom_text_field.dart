import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final String? suffixIcon;
  final String? prefixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final double? borderRadiusShape;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final Color? focussedBorderColor;
  final Color? fillColor;
  final int? maxlines;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.isPassword = false,
    this.keyboardType,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.prefixIcon,
    this.inputAction,
    this.hintStyle,
    this.borderRadius,
    this.borderColor,
    this.fillColor,
    this.maxlines,
    this.focussedBorderColor,
    this.style,
    this.borderRadiusShape,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.isPassword ? 1 : (widget.maxlines ?? 1),
      controller: widget.controller,
      obscureText: _obscureText,
      cursorColor: AppColors.c000000,
      cursorRadius: Radius.circular(8.r),
      keyboardType: widget.keyboardType,
      textInputAction: widget.inputAction,
      style:
          widget.style ??
          TextStyle(
            color: AppColors.c454F5B,
            fontSize: 16.sp,
            fontFamily: 'Geist',
            fontWeight: FontWeight.w500,
          ),
      decoration: InputDecoration(
        fillColor: widget.fillColor ?? AppColors.cFFFFFF,
        filled: true,
        border: OutlineInputBorder(
          borderRadius:
              widget.borderRadius ??
              BorderRadius.circular(widget.borderRadiusShape ?? 50.r),
          borderSide: BorderSide(
            color: widget.focussedBorderColor ?? AppColors.cC4CDD5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              widget.borderRadius ??
              BorderRadius.circular(widget.borderRadiusShape ?? 50.r),
          borderSide: BorderSide(
            color: widget.focussedBorderColor ?? AppColors.cC4CDD5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              widget.borderRadius ??
              BorderRadius.circular(widget.borderRadiusShape ?? 50.r),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.c37B18C,
          ),
        ),
        hintText: widget.hintText,
        hintStyle:
            widget.hintStyle ?? TextFontStyle.headlineStylepublicSans16400,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.c697581,
                ),
              )
            : (widget.suffixIcon != null
                  ? Padding(
                      padding: EdgeInsets.all(12.r),
                      child: SvgPicture.asset(
                        widget.suffixIcon!,
                        height: 24.h,
                        width: 24.w,
                      ),
                    )
                  : null),
        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: EdgeInsets.all(12.r),
                child: SvgPicture.asset(
                  widget.prefixIcon!,
                  height: 24.h,
                  width: 24.w,
                ),
              )
            : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
      ),
      validator: widget.validator,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
    );
  }
}
