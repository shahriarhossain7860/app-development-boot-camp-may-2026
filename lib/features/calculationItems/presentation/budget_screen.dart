// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/common_widget/custom_button.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/features/calculationItems/widgets/budget_amount_widget.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/navigation_service.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({super.key});

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  final TextEditingController amountController = TextEditingController();
  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationService.goBack;
                    },
                    child: SvgPicture.asset(Assets.icon.arrow.path),
                  ),
                  Text(
                    'MExpense',
                    style: TextFontStyle.headlineStyleInter18600.copyWith(
                      color: AppColors.c0F172A,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.icon.arrow.path,
                    color: Colors.transparent,
                  ),
                ],
              ),
              UIHelper.verticalSpace(32.h),
              Center(
                child: Text(
                  'Monthly Limit',
                  style: TextFontStyle.headlineStyleInter26600.copyWith(
                    fontSize: 24.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              UIHelper.verticalSpace(8.h),
              Center(
                child: Text(
                  'Set your total spending limit for November',
                  style: TextFontStyle.headlineStyleInter14400.copyWith(
                    color: AppColors.c45464D,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              UIHelper.verticalSpace(32.h),
              BudgetAmountWidget(amountController: amountController),
              UIHelper.verticalSpace(32.h),
              CustomButton(
                text: 'Save Limit',
                onTap: () {},
                borderRadius: 12.r,
              ),
              UIHelper.verticalSpace(16.h),
              Center(
                child: Text(
                  'Changes will take effect immediately',
                  style: TextFontStyle.headlineStyleInter14400.copyWith(
                    color: AppColors.c45464D,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
