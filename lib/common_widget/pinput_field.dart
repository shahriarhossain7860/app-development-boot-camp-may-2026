// common_widget/pinput_field.dart

// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mexpense/gen/colors.gen.dart';
import 'package:pinput/pinput.dart';

class PinputField extends StatefulWidget {
  final TextEditingController? controller;

  const PinputField({Key? key, this.controller}) : super(key: key);

  @override
  State<PinputField> createState() => _PinputFieldState();
}

class _PinputFieldState extends State<PinputField> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _pinController;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _pinController = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _pinController.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.cF4F6F8;
    const fillColor = AppColors.cF4F6F8;
    // ignore: unused_local_variable
    const borderColor = AppColors.cF4F6F8;

    final defaultPinTheme = PinTheme(
      width: 85.5.w,
      height: 64.h,
      textStyle: const TextStyle(fontSize: 20, color: AppColors.c000000),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(52.r),
        color: AppColors.cF4F6F8,
        border: Border.all(color: AppColors.cF4F6F8),
      ),
    );

    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Pinput(
            length: 4,
            controller: _pinController,
            focusNode: _focusNode,
            defaultPinTheme: defaultPinTheme,
            separatorBuilder: (_) => const SizedBox(width: 16),
            // validator: (value) =>
            //     value == '809719' ? null : 'Wrong code, please try again',
            onCompleted: (pin) => debugPrint('Completed: $pin'),
            cursor: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  width: 20,
                  height: 2,
                  color: focusedBorderColor,
                ),
              ],
            ),
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                borderRadius: BorderRadius.circular(52.r),
                border: Border.all(color: focusedBorderColor),
              ),
            ),
            submittedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                color: fillColor,
                borderRadius: BorderRadius.circular(52.r),
                border: Border.all(color: focusedBorderColor),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyBorderWith(
              border: Border.all(color: Colors.redAccent),
            ),
          ),
        ],
      ),
    );
  }
}
