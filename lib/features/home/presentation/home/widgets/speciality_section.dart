import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../generated/l10n.dart';
import '../../../data/models/specializations_response_model.dart';
import '../cubits/specializations_cubit.dart';
import 'speciality_item.dart';

class SpecialitySection extends StatefulWidget {
  const SpecialitySection({super.key, required this.specializationDataList});

  final List<SpecializationsData?> specializationDataList;

  @override
  State<SpecialitySection> createState() => _SpecialitySectionState();
}

class _SpecialitySectionState extends State<SpecialitySection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final list = widget.specializationDataList;

    if (list.isEmpty) return const SizedBox.shrink();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).doctorSpeciality,
                style: AppTextStyles.semibold18(
                  context,
                ).copyWith(color: AppColors.grey100),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 85,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: list.length,
            separatorBuilder: (context, index) => const SizedBox(width: 24),
            itemBuilder: (context, index) {
              final speciality = list[index];
              return GestureDetector(
                onTap: () {
                  setState(() => selectedIndex = index);
                  context.read<SpecializationsCubit>().getDoctorsList(
                    specializationId: speciality?.id,
                  );
                },
                child: SpecialityItem(
                  speciality: speciality,
                  itemIndex: index,
                  selectedIndex: selectedIndex,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
