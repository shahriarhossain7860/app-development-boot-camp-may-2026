import 'package:mexpense/provider/auth_provider.dart';
import 'package:mexpense/provider/expense_provider.dart';
import 'package:mexpense/provider/providers.dart';
import 'package:provider/provider.dart';

var providers = [
  ChangeNotifierProvider<AuthProvider>(create: ((context) => AuthProvider())),
  ChangeNotifierProvider<Providers>(create: ((context) => Providers())),
  ChangeNotifierProvider<ExpenseProvider>(
    create: ((context) => ExpenseProvider()),
  ),
];
