import 'package:flutter/material.dart';
import 'package:mexpense/gen/colors.gen.dart';

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
      body: Center(child: Text('Dashboard Screen')),
    );
  }
}
