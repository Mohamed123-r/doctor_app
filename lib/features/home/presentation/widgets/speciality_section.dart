import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'speciality_item.dart';

class SpecialitySection extends StatelessWidget {
  const SpecialitySection({super.key, required this.specializationsList});

  final SpecializationsResponseModel specializationsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
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
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 85,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var speciality =
                  specializationsList.specializationDataList![index];

              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 0.0,
                  right:
                      index ==
                          specializationsList.specializationDataList!.length - 1
                      ? 16.0
                      : 0.0,
                ),
                child: SpecialityItem(speciality: speciality),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: specializationsList.specializationDataList!.length,
          ),
        ),
      ],
    );
  }
}

