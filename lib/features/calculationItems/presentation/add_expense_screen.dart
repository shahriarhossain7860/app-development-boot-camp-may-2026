import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mexpense/constants/text_font_style.dart';
import 'package:mexpense/features/calculationItems/widgets/category_item.dart';
import 'package:mexpense/features/calculationItems/widgets/note_field.dart';
import 'package:mexpense/features/expenseItems/model/expense_model.dart';
import 'package:mexpense/gen/assets.gen.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:mexpense/helpers/navigation_service.dart';
import 'package:mexpense/helpers/ui_helpers.dart';
import 'package:mexpense/provider/expense_provider.dart';
import 'package:provider/provider.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final expenseController = TextEditingController();
  final noteController = TextEditingController();
  int index = 0;

  String _getCategoryLabel(int idx) {
    switch (idx) {
      case 1:
        return 'Food & Drinks';
      case 2:
        return 'Shopping';
      case 3:
        return 'Transportation';
      case 4:
        return 'Entertainment';
      case 5:
        return 'Other';
      default:
        return 'Other';
    }
  }

  void _saveExpense() {
    final amountText = expenseController.text.trim();
    if (amountText.isEmpty) return;
    final amount = double.tryParse(amountText);
    if (amount == null || amount <= 0) return;
    if (index == 0) return;

    final expense = ExpenseModel(
      title: noteController.text.trim(),
      category: _getCategoryLabel(index),
      amount: amount,
      dateTime: DateTime.now(),
      note: noteController.text.trim().isEmpty
          ? null
          : noteController.text.trim(),
    );

    context.read<ExpenseProvider>().addExpense(expense);
    NavigationService.goBack;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SafeArea(
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
                    child: SvgPicture.asset(Assets.icon.crossIcon.path),
                  ),
                  Text(
                    'MExpense',
                    style: TextFontStyle.headlineStyleInter18600.copyWith(
                      color: AppColors.c0F172A,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: _saveExpense,
                    child: SvgPicture.asset(Assets.icon.rightIcon.path),
                  ),
                ],
              ),
              UIHelper.verticalSpace(32.h),
              Center(
                child: Text(
                  'Amount',
                  style: TextFontStyle.headlineStyleInter16400.copyWith(
                    color: AppColors.c45464D,
                  ),
                ),
              ),
              UIHelper.verticalSpace(8.h),
              TextFormField(
                controller: expenseController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextFontStyle.headlineStyleInter16400.copyWith(
                  color: AppColors.c0F172A,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  hintText: '\$0.00',
                  hintStyle: TextFontStyle.headlineStyleInter16400.copyWith(
                    color: AppColors.c131B2E,
                  ),
                ),
              ),
              UIHelper.verticalSpace(32.h),
              Text(
                'Category',
                style: TextFontStyle.headlineStyleInter16400.copyWith(
                  color: AppColors.c0B1C30,
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryItem(
                    name: 'Food',
                    iconPath: Assets.icon.foodIcon.path,
                    bgColor: index == 1 ? AppColors.c131B2E : AppColors.cFFFFFF,
                    iconColor: index == 1
                        ? AppColors.cFFFFFF
                        : AppColors.c45464D,
                    textColor: index == 1
                        ? AppColors.c0B1C30
                        : AppColors.c45464D,
                    onTap: () => setState(() => index = 1),
                  ),
                  CategoryItem(
                    name: 'Shop',
                    iconPath: Assets.icon.shopIcon.path,
                    bgColor: index == 2 ? AppColors.c131B2E : AppColors.cFFFFFF,
                    iconColor: index == 2
                        ? AppColors.cFFFFFF
                        : AppColors.c45464D,
                    textColor: index == 2
                        ? AppColors.c0B1C30
                        : AppColors.c45464D,
                    onTap: () => setState(() => index = 2),
                  ),
                  CategoryItem(
                    name: 'Travel',
                    iconPath: Assets.icon.travelIcon.path,
                    bgColor: index == 3 ? AppColors.c131B2E : AppColors.cFFFFFF,
                    iconColor: index == 3
                        ? AppColors.cFFFFFF
                        : AppColors.c45464D,
                    textColor: index == 3
                        ? AppColors.c0B1C30
                        : AppColors.c45464D,
                    onTap: () => setState(() => index = 3),
                  ),
                  CategoryItem(
                    name: 'Play',
                    iconPath: Assets.icon.playIcon.path,
                    bgColor: index == 4 ? AppColors.c131B2E : AppColors.cFFFFFF,
                    iconColor: index == 4
                        ? AppColors.cFFFFFF
                        : AppColors.c45464D,
                    textColor: index == 4
                        ? AppColors.c0B1C30
                        : AppColors.c45464D,
                    onTap: () => setState(() => index = 4),
                  ),
                  CategoryItem(
                    name: 'Other',
                    iconPath: Assets.icon.otherIcon.path,
                    bgColor: index == 5 ? AppColors.c131B2E : AppColors.cFFFFFF,
                    iconColor: index == 5
                        ? AppColors.cFFFFFF
                        : AppColors.c45464D,
                    textColor: index == 5
                        ? AppColors.c0B1C30
                        : AppColors.c45464D,
                    onTap: () => setState(() => index = 5),
                  ),
                ],
              ),
              UIHelper.verticalSpace(32.h),
              NoteField(noteController: noteController),
            ],
          ),
        ),
      ),
    );
  }
}
