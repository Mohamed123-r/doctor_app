import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/features/home/presentation/cubits/specializations_cubit.dart';
import 'package:doctor_app/features/home/presentation/cubits/specializations_state.dart';
import 'package:doctor_app/features/home/presentation/widgets/speciality_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationsCubit, SpecializationsState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoaded ||
          current is SpecializationsLoading ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return Expanded(
              child: Center(
                child: CircularProgressIndicator(color: AppColors.primary100),
              ),
            );
          },
          loaded: (specializationsList) {
            return SpecialitySection(
              specializationDataList: specializationsList ?? [],
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
