import 'package:doctor_app/features/logIn/presentation/widgets/terms_and_conditions_section.dart';
import 'package:doctor_app/features/sign_up/presentation/screen/widgets/create_account_section.dart';
import 'package:doctor_app/features/sign_up/presentation/screen/widgets/have_account.dart' show HaveAccount;
import 'package:doctor_app/features/sign_up/presentation/screen/widgets/sign_up_bloc_listener.dart'
    show SignUpBlocListener;
import 'package:flutter/material.dart';
import 'widgets/create_account_form_section.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            child: Column(
              children: [
                CreateAccountSection(),
                SizedBox(height: 44),
                Form(child: CreateAccountFormSection()),
                SizedBox(height: 44),
                SignUpBlocListener(),
                SizedBox(height: 24),
                TermsAndConditionsSection(),
                SizedBox(height: 44),
                HaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

