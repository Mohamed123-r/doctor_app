import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/theming/locale_cubit.dart';
import '../../../../../generated/l10n.dart';

class HomeBannerDoctor extends StatelessWidget {
  const HomeBannerDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 190,
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
                      S.of(context).bookAndnscheduleWithnnearestDoctor,
                      style: AppTextStyles.medium20(
                        context,
                      ).copyWith(color: AppColors.white),
                    ),
                    const SizedBox(height: 8),
                    AppButton(
                      isSecondary: true,
                      isMin: true,
                      title: S.of(context).findNearby,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: context.watch<LocaleCubit>().state.languageCode == 'en'
                  ? 15
                  : null,
              left: context.watch<LocaleCubit>().state.languageCode == 'ar'
                  ? 15
                  : null,
              bottom: 0,
              child: Image.asset(Assets.imagesBannerImage, height: 215),
            ),
          ],
        ),
      ),
    );
  }
}
