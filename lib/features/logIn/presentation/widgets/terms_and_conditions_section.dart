import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class TermsAndConditionsSection extends StatelessWidget {
  const TermsAndConditionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Handle sign up tap
        },
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: S.of(context).byLoggingYouAgreeToOur,
            style: AppTextStyles.regular14(
              context,
            ).copyWith(color: AppColors.grey60),
            children: [
              TextSpan(
                text: S.of(context).termsAndConditions,
                style: AppTextStyles.semibold14(
                  context,
                ).copyWith(color: AppColors.grey100),
              ),
              TextSpan(
                text: S.of(context).and,
                style: AppTextStyles.semibold14(
                  context,
                ).copyWith(color: AppColors.grey60),
              ),
              TextSpan(
                text: S.of(context).privacyPolicy,
                style: AppTextStyles.semibold14(
                  context,
                ).copyWith(color: AppColors.grey100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
