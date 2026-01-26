import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';

class SpecialityItem extends StatelessWidget {
  const SpecialityItem({
    super.key,
    required this.speciality,
    required this.itemIndex,
    required this.selectedIndex,
  });

  final SpecializationsData? speciality;
  final int itemIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        itemIndex == selectedIndex
            ? CircleAvatar(
                radius: 28,
                backgroundColor: AppColors.primary100,
                child: Image.asset(Assets.imagesDocotr, width: 36, height: 36),
              )
            : CircleAvatar(
                radius: 28,
                backgroundColor: AppColors.primarySurface,
                child: Image.asset(Assets.imagesDocotr, width: 36, height: 36),
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
