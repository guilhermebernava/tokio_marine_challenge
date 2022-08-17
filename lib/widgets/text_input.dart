import 'package:flutter/material.dart';
import 'package:tokio_marine/themes/app_colors.dart';
import 'package:tokio_marine/themes/app_text_style.dart';

class TextInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final bool isPassword;

  const TextInput({
    Key? key,
    required this.label,
    required this.controller,
    required this.validator,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isPassword,
        textAlign: TextAlign.center,
        style: AppTextStyle.appRoboto(),
        decoration: InputDecoration(
          hintStyle: AppTextStyle.appRoboto(),
          hintText: label,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.green,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.shadow,
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
