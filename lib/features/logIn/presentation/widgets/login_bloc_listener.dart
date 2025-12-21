import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/custom_error.dart';
import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/helpers/shared_pref_helper.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/features/logIn/presentation/cubits/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
            await   SharedPrefHelper.setSecuredString(
              SharedPrefKeys.userToken,
              data.data.token,
            );
            context.pushNamed(Routes.home);
          },
          error: (error) {
            errorDialog(
              context,
              massage: error,
            );
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
    );
  }
}
