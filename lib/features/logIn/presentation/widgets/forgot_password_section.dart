import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSection extends StatelessWidget {
  const ForgotPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          // Handle forgot password tap
        },
        child: Text(
          'Forgot Password?',
          style: AppTextStyles.semibold12(
            context,
          ).copyWith(color: AppColors.primary100),
        ),
      ),
    );
  }
}
