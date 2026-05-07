import 'package:flutter/foundation.dart';
import 'package:mexpense/features/expenseItems/model/expense_model.dart';

final class ExpenseProvider extends ChangeNotifier {
  final List<ExpenseModel> _expenses = [];
  double _monthlyBudget = 0.0;
  String _currentMonth = '';

  ExpenseProvider() {
    _updateCurrentMonth();
  }

  void _updateCurrentMonth() {
    _currentMonth = _getCurrentMonthYear();
  }

  String _getCurrentMonthYear() {
    final now = DateTime.now();
    return '${now.month}-${now.year}';
  }

  double get monthlyBudget => _monthlyBudget;

  List<ExpenseModel> get expenses => List.unmodifiable(_expenses);

  double get totalSpent => _expenses.fold(0.0, (sum, e) => sum + e.amount);

  double get budgetRemaining => _monthlyBudget - totalSpent;

  double get budgetUsedPercentage {
    if (_monthlyBudget == 0) return 0.0;
    return (totalSpent / _monthlyBudget).clamp(0.0, 1.0);
  }

  String get budgetStatusText {
    if (_monthlyBudget == 0) return 'No budget set';
    if (totalSpent >= _monthlyBudget) return 'Budget exceeded!';
    final percentageUsed = (budgetUsedPercentage * 100).round();
    return '$percentageUsed% used';
  }

  List<ExpenseModel> get recentExpenses {
    final sorted = [..._expenses]
      ..sort((a, b) => b.dateTime.compareTo(a.dateTime));
    return sorted;
  }

  Map<String, double> get topCategories {
    final Map<String, double> map = {};
    for (final e in _expenses) {
      map[e.category] = (map[e.category] ?? 0) + e.amount;
    }
    final sorted = map.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return Map.fromEntries(sorted);
  }

  void setMonthlyBudget(double budget) {
    _monthlyBudget = budget;
    _updateCurrentMonth();
    notifyListeners();
  }

  void addExpense(ExpenseModel expense) {
    _expenses.add(expense);
    notifyListeners();
  }

  void checkAndResetBudgetForNewMonth() {
    final currentMonth = _getCurrentMonthYear();
    if (_currentMonth != currentMonth) {
      _monthlyBudget = 0.0;
      _currentMonth = currentMonth;
      notifyListeners();
    }
  }

  String getLatestNoteForCategory(String category) {
    final filteredExpenses = _expenses
        .where(
          (expense) =>
              expense.category == category && expense.title.trim().isNotEmpty,
        )
        .toList();

    if (filteredExpenses.isEmpty) return '';

    return filteredExpenses.last.title;
  }
}
