import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/features/home/presentation/home/cubits/specializations_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/specializations_state.dart';
import 'doctors_list_section.dart';


class DoctorBlocBuilder extends StatelessWidget {
  const DoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationsCubit, SpecializationsState>(
      buildWhen: (previous, current) =>
          current is SpecializationsStateLoaded ||
          current is SpecializationsStateError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorLoaded: (doctorsList) {
            return DoctorsListSection(doctorsList: doctorsList ?? []);
          },
          doctorError: (message) {
            return Center(
              child: Text(
                'An error occurred while fetching doctors.',
                style: TextStyle(color: AppColors.grey80),
              ),
            );
          },

          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
