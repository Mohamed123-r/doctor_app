import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';

class HomeBannerDoctor extends StatelessWidget {
  const HomeBannerDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 160,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesHomeBanner),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book and\nschedule with\nnearest doctor',
                    style: AppTextStyles.medium20(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: AppButton(
                      isSecondary: true,
                      isMin: true,
                      title: "Find Nearby",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 0,
            child: Image.asset(Assets.imagesBannerImage, height: 185),
          ),
        ],
      ),
    );
  }
}
