import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/locale_cubit.dart';
import '../../../../../generated/l10n.dart';
import 'doctor_item.dart';

class DoctorsListSection extends StatelessWidget {
  final List<Doctors?>? doctorsList;

  const DoctorsListSection({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    final languageCode = context.watch<LocaleCubit>().state.languageCode;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).recommendationDoctor,
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
                padding: languageCode == 'en'
                    ? EdgeInsets.only(
                        left: index == 0 ? 16.0 : 0.0,
                        right: index == doctorsList!.length - 1 ? 16.0 : 0.0,
                      )
                    : EdgeInsets.only(
                        right: index == 0 ? 16.0 : 0.0,
                        left: index == doctorsList!.length - 1 ? 16.0 : 0.0,
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
