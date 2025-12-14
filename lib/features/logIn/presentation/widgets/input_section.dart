import 'package:doctor_app/core/helpers/validator.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/widgets/app_text_field.dart';
import 'package:doctor_app/features/logIn/presentation/cubits/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputSection extends StatefulWidget {
  const InputSection({super.key});

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  bool obscureText = true;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children: [
          AppTextField(
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            controller: context.read<LoginCubit>().emailController,
            onChanged: (value) {
              if (autovalidateMode == AutovalidateMode.disabled) {
                setState(() {
                  autovalidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
            validator: (value) {
              return validatorOfEmail(context, value);
            },
          ),
          SizedBox(height: 16),
          AppTextField(
            hintText: "Password",
            obscureText: obscureText,
            controller: context.read<LoginCubit>().passwordController,
            onChanged: (value) {
              if (autovalidateMode == AutovalidateMode.disabled) {
                setState(() {
                  autovalidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
            validator: (value) {
              return validatorOfPassword(context, value);
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
                color: AppColors.grey50,
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
