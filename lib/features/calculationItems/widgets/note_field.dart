import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class NoteField extends StatelessWidget {
  const NoteField({super.key, required this.noteController});

  final TextEditingController noteController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.icon.noteIcon.path),
          UIHelper.horizontalSpace(16.w),
          Flexible(
            child: TextFormField(
              controller: noteController,
              cursorColor: AppColors.c000000,
              style: TextFontStyle.headlineStyleInter16400.copyWith(
                color: AppColors.c0F172A,
              ),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                hintText: 'Add a short note...',
                hintStyle: TextFontStyle.headlineStyleInter16400.copyWith(
                  color: AppColors.cC6C6CD,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
