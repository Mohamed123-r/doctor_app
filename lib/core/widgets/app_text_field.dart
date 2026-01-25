import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.controller,
    this.suffixIcon,
    this.onChanged,
    this.obscureText = false,
    this.validator,
    this.hintTextColor = AppColors.grey50,
    this.cursorColor = AppColors.primary100,
    this.readOnly = false,
    this.autofillHints, this.initialValue, this.prefixIcon,
  });

  final bool? readOnly;

  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Color hintTextColor;
  final Color cursorColor;

  final Iterable<String>? autofillHints;
  final String? initialValue ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue:initialValue ,
      controller: controller,
      cursorColor: cursorColor,
      autofillHints: autofillHints,
      onChanged: onChanged,
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "This field cannot be empty";
            }
            return null;
          },
      keyboardType: keyboardType,
      obscureText: obscureText,

      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.secondaryForm,
        hintText: hintText,
        hintStyle: AppTextStyles.medium14(
          context,
        ).copyWith(color: hintTextColor),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: _buildOutlineInputBorder(),
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _focusedOutlineInputBorder(),
        disabledBorder: _buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(width: 1, color: AppColors.grey30),
    );
  }

  OutlineInputBorder _focusedOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(width: 1, color: AppColors.primary100),
    );
  }
}
