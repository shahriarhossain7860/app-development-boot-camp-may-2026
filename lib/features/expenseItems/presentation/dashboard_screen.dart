// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/features/expenseItems/widgets/budget_ratio.dart';
import 'package:mexpense/features/expenseItems/widgets/dashboard_no_data.dart';
import 'package:mexpense/features/expenseItems/widgets/recent_expense_item.dart';
import 'package:mexpense/features/expenseItems/widgets/total_budget_widget.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/all_routes.dart';
import 'package:mexpense/helpers/navigation_service.dart';
import 'package:mexpense/helpers/ui_helpers.dart';
import 'package:mexpense/provider/expense_provider.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final expenseProvider = context.read<ExpenseProvider>();
      expenseProvider.checkAndResetBudgetForNewMonth();
    });
  }

  @override
  Widget build(BuildContext context) {
    final expenseProvider = context.watch<ExpenseProvider>();
    final recentExpenses = expenseProvider.recentExpenses;
    final totalSpentRemaining = expenseProvider.budgetRemaining;
    final totalSpent = expenseProvider.totalSpent;
    final monthlyBudget = expenseProvider.monthlyBudget;
    final budgetUsedPercentage = expenseProvider.budgetUsedPercentage;
    final budgetStatusText = expenseProvider.budgetStatusText;

    final currentMonth = DateTime.now();
    final monthName = _getMonthName(currentMonth.month);

    return Scaffold(
      backgroundColor: AppColors.cF8F9FF,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(60.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MExpense',
                    style: TextFontStyle.headlineStyleInter18600.copyWith(
                      color: AppColors.c0F172A,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigationService.navigateTo(Routes.budget);
                    },
                    child: SvgPicture.asset(Assets.icon.budgetIcon.path),
                  ),
                ],
              ),
              UIHelper.verticalSpace(16.h),
              TotalBudgetWidget(budget: totalSpentRemaining),
              UIHelper.verticalSpace(32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Monthly Budget - $monthName',
                    style: TextFontStyle.headlineStyleInter16400.copyWith(
                      color: AppColors.c0B1C30,
                    ),
                  ),
                  Text(
                    budgetStatusText,
                    style: TextFontStyle.headlineStyleInter16400.copyWith(
                      color: budgetUsedPercentage >= 1.0
                          ? Colors.red
                          : AppColors.c006B5F,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(16.h),
              BudgetRatio(
                value: budgetUsedPercentage,
                spent: totalSpent,
                limits: monthlyBudget,
              ),
              UIHelper.verticalSpace(32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Expenses',
                    style: TextFontStyle.headlineStyleInter16400.copyWith(
                      color: AppColors.c0B1C30,
                    ),
                  ),
                  if (recentExpenses.isNotEmpty)
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'See All',
                        style: TextFontStyle.headlineStyleInter16400.copyWith(
                          color: AppColors.c0B1C30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
              UIHelper.verticalSpace(8.h),
              if (recentExpenses.isNotEmpty) UIHelper.verticalSpace(8.h),
              recentExpenses.isEmpty
                  ? const DashboardNoData()
                  : ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: recentExpenses.length > 5
                          ? 5
                          : recentExpenses.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8.h),
                          child: RecentExpenseItem(
                            itemNumber: i + 1,
                            expense: recentExpenses[i],
                          ),
                        );
                      },
                    ),
              if (monthlyBudget == 0 && recentExpenses.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: Container(
                    padding: EdgeInsets.all(12.h),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.orange,
                        ),
                        UIHelper.horizontalSpace(12.w),
                        Expanded(
                          child: Text(
                            'No budget set. Tap the budget icon to set your monthly limit.',
                            style: TextFontStyle.headlineStyleInter12400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
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
