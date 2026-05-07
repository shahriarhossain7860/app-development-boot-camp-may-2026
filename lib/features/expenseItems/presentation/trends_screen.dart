import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/features/expenseItems/widgets/monthly_spend_widget.dart';
import 'package:mexpense/features/expenseItems/widgets/top_category_item.dart';
import 'package:mexpense/features/expenseItems/widgets/trends_no_data.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/ui_helpers.dart';
import 'package:mexpense/provider/expense_provider.dart';
import 'package:provider/provider.dart';

class TrendsScreen extends StatefulWidget {
  const TrendsScreen({super.key});

  @override
  State<TrendsScreen> createState() => _TrendsScreenState();
}

class _TrendsScreenState extends State<TrendsScreen> {
  @override
  Widget build(BuildContext context) {
    final expenseProvider = context.watch<ExpenseProvider>();
    final topCategories = expenseProvider.topCategories;
    final totalSpent = expenseProvider.totalSpent;
    final categoryEntries = topCategories.entries.toList();

    return Scaffold(
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
            MonthlySpendWidget(spend: totalSpent),
            UIHelper.verticalSpace(32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: TextFontStyle.headlineStyleInter20600.copyWith(
                    color: AppColors.c0B1C30,
                  ),
                ),
                if (categoryEntries.isNotEmpty)
                  Text(
                    'View All',
                    style: TextFontStyle.headlineStyleInter16400.copyWith(
                      color: AppColors.c0B1C30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            categoryEntries.isEmpty
                ? const TrendsNoData()
                : Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: categoryEntries.length,
                      itemBuilder: (context, i) {
                        final entry = categoryEntries[i];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8.h),
                          child: TopCategoryItem(
                            itemNumber: i + 1,
                            categoryName: entry.key,
                            subLabel: expenseProvider.getLatestNoteForCategory(
                              entry.key,
                            ),
                            totalAmount: entry.value,
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
