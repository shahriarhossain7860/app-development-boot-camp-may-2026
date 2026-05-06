// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/features/expenseItems/widgets/monthly_spend_widget.dart';
import 'package:mexpense/features/expenseItems/widgets/trends_no_data.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';

class TrendsScreen extends StatefulWidget {
  const TrendsScreen({super.key});

  @override
  State<TrendsScreen> createState() => _TrendsScreenState();
}

class _TrendsScreenState extends State<TrendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF8F9FF,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(60.h),
            Text(
              'MExpense',
              style: TextFontStyle.headlineStyleInter18600.copyWith(
                color: AppColors.c0F172A,
                fontWeight: FontWeight.bold,
              ),
            ),
            UIHelper.verticalSpace(32.h),
            const MonthlySpendWidget(spend: 0.00),
            UIHelper.verticalSpace(32.h),
            Text(
              'Top Categories',
              style: TextFontStyle.headlineStyleInter20600.copyWith(
                color: AppColors.c0B1C30,
              ),
            ),
            UIHelper.verticalSpace(16.h),
            TrendsNoData(),
          ],
        ),
      ),
    );
  }
}
