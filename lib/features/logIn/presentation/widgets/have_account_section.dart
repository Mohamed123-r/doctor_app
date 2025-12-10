import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class HaveAccountSection extends StatelessWidget {
  const HaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Handle sign up tap
        },
        child: RichText(
          text: TextSpan(
            text: "Already have an account yet? ",
            style: AppTextStyles.regular14(
              context,
            ).copyWith(color: AppColors.body),
            children: [
              TextSpan(
                text: 'Sign Up',
                style: AppTextStyles.semibold14(
                  context,
                ).copyWith(color: AppColors.primary100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
