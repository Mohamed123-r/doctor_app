import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountSection extends StatelessWidget {
  const CreateAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account',
          style: AppTextStyles.bold24(
            context,
          ).copyWith(color: AppColors.primary100),
        ),
        SizedBox(height: 8),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: AppTextStyles.regular16(
            context,
          ).copyWith(color: AppColors.body),
        ),
      ],
    );
  }
}
