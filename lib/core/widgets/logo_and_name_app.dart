import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoAndNameApp extends StatelessWidget {
  const LogoAndNameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.svgDocLogo),
        const SizedBox(width: 10),
        Text('Docdoc', style: AppTextStyles.bold32(context)),
      ],
    );
  }
}
