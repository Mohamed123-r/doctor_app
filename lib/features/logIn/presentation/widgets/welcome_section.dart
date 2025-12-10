import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: AppTextStyles.bold24(
            context,
          ).copyWith(color: AppColors.primary100),
        ),
        SizedBox(height: 8),
        Text(
          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
          style: AppTextStyles.regular16(
            context,
          ).copyWith(color: AppColors.body),
        ),
      ],
    );
  }
}
