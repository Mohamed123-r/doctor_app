import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityItem extends StatelessWidget {
  const SpecialityItem({super.key, required this.speciality});

  final SpecializationsData? speciality;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: AppColors.primarySurface,
          child: SvgPicture.asset(Assets.svgNotivication),
        ),
        const SizedBox(height: 8),
        Text(
          speciality!.name ?? '',
          style: AppTextStyles.regular12(
            context,
          ).copyWith(color: AppColors.grey100),
        ),
      ],
    );
  }
}
