import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

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
            text: S.of(context).alreadyHaveAnAccount,
            style: AppTextStyles.regular14(
              context,
            ).copyWith(color: AppColors.body),
            children: [
              TextSpan(
                text: S.of(context).login,
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
