import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialitySection extends StatelessWidget {
  const SpecialitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doctor Speciality',
              style: AppTextStyles.semibold18(
                context,
              ).copyWith(color: AppColors.grey100),
            ),
            Text(
              'See All',
              style: AppTextStyles.regular12(
                context,
              ).copyWith(color: AppColors.primary100),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 85,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.primarySurface,
                    child: SvgPicture.asset(Assets.svgNotivication),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Speciality ${index + 1}',
                    style: AppTextStyles.regular12(
                      context,
                    ).copyWith(color: AppColors.grey100),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
