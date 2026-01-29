import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/profile/presentation/profile_information_screen/data/model/update_profile_request_body.dart';

import 'package:doctor_app/features/profile/presentation/profile_information_screen/data/repository/update_profile_repo.dart';
import 'package:doctor_app/features/profile/presentation/profile_information_screen/presentation/logic/update_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
enum Gender {
  male(0),
  female(1);

  final int code;
  const Gender(this.code);
}
class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final UpdateProfileRepo updateProfileRepo;

  UpdateProfileCubit({required this.updateProfileRepo}) : super(
    UpdateProfileState.initial(),
  );
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  void getProfileData() async {
    emit(UpdateProfileState.loading());

    var response = await updateProfileRepo.updateProfileData(
      UpdateProfileRequestBody(name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: Gender.male.code,
        password: passwordController.text

       ),
    );
    response.when(
      success: (data) {
        emit(UpdateProfileState.success(data));
      },
      failure: (apiErrorModel) {
        emit(UpdateProfileState.error(
          apiErrorModel: apiErrorModel,
        ));
      },
    );
  }
}
