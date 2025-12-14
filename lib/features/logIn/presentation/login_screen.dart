import 'package:doctor_app/core/helpers/custom_error.dart';
import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/features/logIn/data/models/login_request_body.dart';
import 'package:doctor_app/features/logIn/presentation/cubits/login_cubit.dart';
import 'package:doctor_app/features/logIn/presentation/cubits/login_state.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/forgot_password_section.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/input_section.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/terms_and_conditions_section.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/welcome_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/have_account_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Form(
              child: Column(
                children: [
                  WelcomeSection(),
                  SizedBox(height: 32),
                  InputSection(),
                  SizedBox(height: 24),
                  ForgotPasswordSection(),
                  SizedBox(height: 44),
                  BlocListener<LoginCubit, LoginState>(
                    listenWhen: (previous, current) {
                      return previous != current;
                    },
                    listener: (context, state) {
                      state.whenOrNull(
                        success: (data) async {
                          await successDialog(
                            context,
                            massage: "Login Successful",
                          );
                          context.pushNamed(Routes.home);
                        },
                      );
                    },
                    child: AppButton(
                      title: "Login",
                      isLoading:
                          context.watch<LoginCubit>().state.whenOrNull(
                            loading: () => true,
                          ) ??
                          false,
                      onPressed: () {
                        final loginCubit = context.read<LoginCubit>();

                        if (loginCubit.formKey.currentState!.validate()) {
                          loginCubit.emitLoginState();
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 24),
                  TermsAndConditionsSection(),
                  SizedBox(height: 44),
                  HaveAccountSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
