import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';

class DoctorsListSection extends StatelessWidget {
  const DoctorsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommendation Doctor',
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
            height: 150,

            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
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
                          Assets.imagesBannerImage,
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
                              'Dr. John Doe',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.bold16(
                                context,
                              ).copyWith(color: AppColors.grey100),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Cardiologist',
                              style: AppTextStyles.medium14(
                                context,
                              ).copyWith(color: AppColors.body),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Cardiologist',
                              style: AppTextStyles.medium14(
                                context,
                              ).copyWith(color: AppColors.body),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
