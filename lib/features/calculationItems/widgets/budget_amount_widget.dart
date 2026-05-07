import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class BudgetAmountWidget extends StatelessWidget {
  const BudgetAmountWidget({super.key, required this.amountController});

  final TextEditingController amountController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'TOTAL AMOUNT',
            style: TextFontStyle.headlineStyleInter14500.copyWith(
              fontSize: 12.sp,
              color: AppColors.c7C839B,
              letterSpacing: 2,
            ),
          ),

          UIHelper.verticalSpace(10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /// Dollar Sign
              Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: Text(
                  '\$',
                  style: TextFontStyle.headlineStyleInter14500.copyWith(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffC4C7CF),
                  ),
                ),
              ),

              UIHelper.horizontalSpace(10.w),
              SizedBox(
                width: 180.w,
                child: TextFormField(
                  cursorColor: AppColors.c000000,
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextFontStyle.headlineStyleInter14500.copyWith(
                    fontSize: 42.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.c0B1C30,
                    height: 1,
                  ),
                  decoration: const InputDecoration(
                    isCollapsed: true,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),

          UIHelper.verticalSpace(12.h),

          Container(height: 2.h, width: double.infinity, color: Colors.black87),
        ],
      ),
    );
  }
}
