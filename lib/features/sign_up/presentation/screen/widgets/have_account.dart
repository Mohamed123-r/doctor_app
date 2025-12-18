import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          context.pushReplacementNamed(Routes.login);
        },
        child: RichText(
          text: TextSpan(
            text: "Already have an account? ",
            style: AppTextStyles.regular14(
              context,
            ).copyWith(color: AppColors.body),
            children: [
              TextSpan(
                text: 'Login',
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
