import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/logIn/data/models/login_request_body.dart';
import 'package:doctor_app/features/logIn/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit({required this.loginRepo}) : super(
        LoginState.initial(),
  );
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void emitLoginState() async {
    emit(LoginState.loading());

    var response = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(
          error: error.apiErrorModel.message!,
        ));
      },
    );
  }
}
