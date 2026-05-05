import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/features/expenseItems/widgets/budget_ratio.dart';
import 'package:mexpense/features/expenseItems/widgets/dashboard_no_data.dart';
import 'package:mexpense/features/expenseItems/widgets/total_budget_widget.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
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
                  SvgPicture.asset(Assets.icon.budgetIcon.path),
                ],
              ),
              UIHelper.verticalSpace(16.h),
              const TotalBudgetWidget(budget: 0.00),
              UIHelper.verticalSpace(32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Monthly Budget',
                    style: TextFontStyle.headlineStyleInter16400.copyWith(
                      color: AppColors.c0B1C30,
                    ),
                  ),
                  Text(
                    '0% used',
                    style: TextFontStyle.headlineStyleInter16400.copyWith(
                      color: AppColors.c006B5F,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(16.h),
              const BudgetRatio(value: 0.0, spent: 0.00, limits: 0.00),
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
                ],
              ),
              UIHelper.verticalSpace(16.h),
              const DashboardNoData(),
            ],
          ),
        ),
      ),
    );
  }
}
