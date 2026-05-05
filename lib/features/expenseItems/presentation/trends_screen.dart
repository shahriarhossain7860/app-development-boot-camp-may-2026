import 'package:flutter/material.dart';
import 'package:mexpense/gen/colors.gen.dart';

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
      body: Center(child: Text('Trends Screen')),
    );
  }
}
