import 'package:flutter/material.dart';
import 'package:mexpense/gen/colors.gen.dart';

class CustomLinearProgress extends StatelessWidget {
  final double value;

  const CustomLinearProgress({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 6, // thin height like your image
        child: LinearProgressIndicator(
          value: value,
          backgroundColor: Colors.grey.shade300,
          valueColor: AlwaysStoppedAnimation<Color>(
            AppColors.c131B2E, // progress color
          ),
        ),
      ),
    );
  }
}
