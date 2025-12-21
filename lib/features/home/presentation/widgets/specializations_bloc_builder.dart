import 'package:doctor_app/features/home/presentation/cubits/specializations_cubit.dart';
import 'package:doctor_app/features/home/presentation/cubits/specializations_state.dart';
import 'package:doctor_app/features/home/presentation/widgets/speciality_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'doctors_list_section.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationsCubit, SpecializationsState>(
      buildWhen: (oldState, newState) {
        return oldState != newState;
      },
      builder: (context, state) {
        return     state.when(
          loading: () {
            return CircularProgressIndicator();
          },
          loaded: (specializationsResponseModel) {
            return       Column(
              children: [
                SpecialitySection(specializationsList:
                specializationsResponseModel
                  ,),
                SizedBox(height: 32),
                DoctorsListSection(
                  specializationData:
                  specializationsResponseModel.specializationDataList!.firstWhere(
                        (element) => element!.doctorsList != null && element.doctorsList!.isNotEmpty,
                    orElse: () => null,
                  )!,
                ),
              ],
            );
          },
          error: (message) {
            return SizedBox.shrink();
          }, initial: () {
            return SizedBox.shrink();
        },

        );


      },
    );
  }
}
