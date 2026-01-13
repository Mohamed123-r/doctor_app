import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class DoctorsListSection extends StatelessWidget {
  final List<Doctors?>? doctorsList;

  const DoctorsListSection({super.key, required this.doctorsList});

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
                'Recommendation Doctor',
                style: AppTextStyles.semibold18(
                  context,
                ).copyWith(color: AppColors.grey100),
              ),
              // Text(
              //   'See All',
              //   style: AppTextStyles.regular12(
              //     context,
              //   ).copyWith(color: AppColors.primary100),
              // ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        SizedBox(
          height: 150,

          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 0.0,
                  right: index == doctorsList!.length - 1 ? 16.0 : 0.0,
                ),
                child: DoctorItem(doctor: doctorsList![index]),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: doctorsList!.length,
          ),
        ),
      ],
    );
  }
}
