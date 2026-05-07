// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/features/expenseItems/model/expense_model.dart';
import 'package:mexpense/gen/colors.gen.dart';

class RecentExpenseItem extends StatelessWidget {
  final int itemNumber;
  final ExpenseModel expense;

  const RecentExpenseItem({
    super.key,
    required this.itemNumber,
    required this.expense,
  });

  String _formatTime(DateTime dt) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final expenseDay = DateTime(dt.year, dt.month, dt.day);

    if (expenseDay == today) {
      final hour = dt.hour;
      final minute = dt.minute.toString().padLeft(2, '0');
      final period = hour >= 12 ? 'PM' : 'AM';
      final displayHour = hour % 12 == 0 ? 12 : hour % 12;
      return '$displayHour:$minute $period';
    } else {
      return 'Yesterday';
    }
  }

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
                  expense.category,
                  style: TextFontStyle.headlineStyleInter16400.copyWith(
                    color: AppColors.c0F172A,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  expense.title,
                  style: TextFontStyle.headlineStyleInter16400.copyWith(
                    color: AppColors.c45464D,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '-\$${expense.amount.toStringAsFixed(2)}',
                style: TextFontStyle.headlineStyleInter16400.copyWith(
                  color: const Color(0xFFE53935),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                _formatTime(expense.dateTime),
                style: TextFontStyle.headlineStyleInter16400.copyWith(
                  color: AppColors.c45464D,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
