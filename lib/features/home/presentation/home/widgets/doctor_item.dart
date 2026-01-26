import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routing/routes.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, required this.doctor});

  final Doctors? doctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () async {
         context.pushNamed(
           Routes.doctorDetails,
           arguments: doctor,
         );
       } ,
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          color: AppColors.grey40,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                doctor!.gender == "male"
                    ? Assets.imagesOnboardingDoctor
                    : Assets.imagesBannerImage,
                width: 110,
                height: 150,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    doctor!.name ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.bold16(
                      context,
                    ).copyWith(color: AppColors.grey100),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    doctor!.phone ?? '',
                    style: AppTextStyles.medium14(
                      context,
                    ).copyWith(color: AppColors.body),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Degree / ${doctor!.degree}",
                    style: AppTextStyles.medium14(
                      context,
                    ).copyWith(color: AppColors.body),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$${doctor!.appointPrice ?? ''} / visit',
                    style: AppTextStyles.medium14(
                      context,
                    ).copyWith(color: AppColors.body),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
