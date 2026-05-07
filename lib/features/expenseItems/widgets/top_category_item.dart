// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';

class TopCategoryItem extends StatelessWidget {
  final int itemNumber;
  final String categoryName;
  final String? subLabel;
  final double totalAmount;

  const TopCategoryItem({
    super.key,
    required this.itemNumber,
    required this.categoryName,
    this.subLabel,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 32.w,
            height: 32.h,
            decoration: const BoxDecoration(
              color: Color(0xFFEEF2FF),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '$itemNumber',
              style: TextFontStyle.headlineStyleInter16400.copyWith(
                color: AppColors.c0F172A,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryName,
                  style: TextFontStyle.headlineStyleInter16400.copyWith(
                    color: AppColors.c0F172A,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (subLabel != null && subLabel!.trim().isNotEmpty) ...[
                  SizedBox(height: 2.h),

                  Text(
                    subLabel!,
                    style: TextFontStyle.headlineStyleInter16400.copyWith(
                      color: AppColors.c45464D,
                      fontSize: 13,
                    ),
                  ),
                ],
              ],
            ),
          ),
          Text(
            '\$${totalAmount.toStringAsFixed(2)}',
            style: TextFontStyle.headlineStyleInter16400.copyWith(
              color: AppColors.c0F172A,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
