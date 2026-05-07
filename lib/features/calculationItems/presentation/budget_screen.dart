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
import 'package:mexpense/provider/expense_provider.dart';
import 'package:provider/provider.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({super.key});

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  final TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final expenseProvider = context.read<ExpenseProvider>();
    if (expenseProvider.monthlyBudget > 0) {
      amountController.text = expenseProvider.monthlyBudget.toString();
    }
  }

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final expenseProvider = context.watch<ExpenseProvider>();
    final currentMonth = DateTime.now();
    final monthName = _getMonthName(currentMonth.month);

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
                      NavigationService.goBack();
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
                  'Set your total spending limit for $monthName',
                  style: TextFontStyle.headlineStyleInter14400.copyWith(
                    color: AppColors.c45464D,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              UIHelper.verticalSpace(32.h),
              BudgetAmountWidget(amountController: amountController),
              UIHelper.verticalSpace(32.h),
              if (expenseProvider.monthlyBudget > 0)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.h),
                        decoration: BoxDecoration(
                          color: AppColors.c006B5F.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Current Budget:',
                              style: TextFontStyle.headlineStyleInter14400,
                            ),
                            Text(
                              '\$${expenseProvider.monthlyBudget.toStringAsFixed(2)}',
                              style: TextFontStyle.headlineStyleInter16400
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.c006B5F,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      UIHelper.verticalSpace(16.h),
                    ],
                  ),
                ),
              CustomButton(
                text: expenseProvider.monthlyBudget > 0
                    ? 'Update Limit'
                    : 'Save Limit',
                onTap: () {
                  _saveBudget(expenseProvider);
                },
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

  void _saveBudget(ExpenseProvider expenseProvider) {
    final budgetText = amountController.text.trim();
    if (budgetText.isEmpty) {
      _showSnackBar('Please enter a budget amount');
      return;
    }

    final budget = double.tryParse(budgetText);
    if (budget == null || budget <= 0) {
      _showSnackBar('Please enter a valid budget amount');
      return;
    }

    expenseProvider.setMonthlyBudget(budget);
    _showSnackBar('Budget saved successfully!');
    NavigationService.goBack;
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.c000000,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  String _getMonthName(int month) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return months[month - 1];
  }
}
