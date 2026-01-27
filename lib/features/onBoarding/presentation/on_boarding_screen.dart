import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/core/widgets/logo_and_name_app.dart';
import 'package:doctor_app/features/onBoarding/presentation/widgets/image_and_text_in_on_boarding.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              LogoAndNameApp(),
              ImageAndTextInOnBoarding(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    Text(
                      S
                          .of(context)
                          .manageAndScheduleAllOfYourMedicalAppointmentsEasilyWith,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.medium14(
                        context,
                      ).copyWith(color: AppColors.body),
                    ),
                    const SizedBox(height: 30),
                    AppButton(
                      title: S.of(context).getStarted,
                      onPressed: () {
                        context.pushReplacementNamed(Routes.login);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
