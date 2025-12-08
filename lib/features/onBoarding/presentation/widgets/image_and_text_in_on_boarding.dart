import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageAndTextInOnBoarding extends StatelessWidget {
  const ImageAndTextInOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.svgBackgroundLogo),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(Assets.imagesOnboardingDoctor),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'Best Doctor \n Appointment App',
              textAlign: TextAlign.center,
              style: AppTextStyles.bold32(
                context,
              ).copyWith(color: AppColors.primary100, height: 1.6),
            ),
          ),
        ),
      ],
    );
  }
}
