import 'package:intl/intl.dart';

String formatDateString(String? dateString) {
  if (dateString == null) return "";
  final date = DateTime.parse(dateString);
  return DateFormat('MMMM dd yyyy').format(date);
}