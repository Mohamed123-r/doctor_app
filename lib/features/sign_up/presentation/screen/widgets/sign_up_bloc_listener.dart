import 'package:doctor_app/core/helpers/custom_error.dart';
import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) {
        return previous != current;
      },
      listener: (context, state) {
        state.whenOrNull(
          success: (data) async {
            await successDialog(context, massage: "Add Account Successful");
            context.pushNamed(Routes.home);
          },
          failure: (error) {
            errorDialog(context, massage: error);
          },
        );
      },
      child: AppButton(
        title: "Create Account",
        isLoading:
            context.watch<SignUpCubit>().state.whenOrNull(
              loading: () => true,
            ) ??
            false,
        onPressed: () {
          if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
            context.read<SignUpCubit>().emitSignUpState();
          }
        },
      ),
    );
  }
}
