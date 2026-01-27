import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).welcomeBack,
          style: AppTextStyles.bold24(
            context,
          ).copyWith(color: AppColors.primary100),
        ),
        SizedBox(height: 8),
        Text(
          S.of(context).wereExcitedToHaveYouBackCantWaitToSee,
          style: AppTextStyles.regular16(
            context,
          ).copyWith(color: AppColors.body),
        ),
      ],
    );
  }
}
