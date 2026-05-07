class ExpenseModel {
  final String title;
  final String category;
  final double amount;
  final DateTime dateTime;
  final String? note;

  ExpenseModel({
    required this.title,
    required this.category,
    required this.amount,
    required this.dateTime,
    this.note,
  });
}
