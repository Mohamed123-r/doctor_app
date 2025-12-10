import 'package:doctor_app/core/widgets/large_button.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/forgot_password_section.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/input_section.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/terms_and_conditions_section.dart';
import 'package:doctor_app/features/logIn/presentation/widgets/welcome_section.dart';
import 'package:flutter/material.dart';

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
                  LargeButton(title: "Login", onPressed: () {}),
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
