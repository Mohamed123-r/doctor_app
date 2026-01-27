import 'package:doctor_app/core/helpers/validator.dart';
import 'package:doctor_app/core/widgets/app_text_field.dart';
import 'package:doctor_app/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../generated/l10n.dart';

class CreateAccountFormSection extends StatefulWidget {
  const CreateAccountFormSection({super.key});

  @override
  State<CreateAccountFormSection> createState() =>
      _CreateAccountFormSectionState();
}

class _CreateAccountFormSectionState extends State<CreateAccountFormSection> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AppTextField(
            hintText: S.of(context).fullName,
            keyboardType: TextInputType.name,
            controller: context.read<SignUpCubit>().nameController,
            onChanged: (value) {
              if (autovalidateMode == AutovalidateMode.disabled) {
                setState(() {
                  autovalidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
            validator: (value) {
              return validatorOfName(context, value);
            },
          ),
          SizedBox(height: 16),
          AppTextField(
            hintText: S.of(context).phoneNumber,
            keyboardType: TextInputType.phone,
            controller: context.read<SignUpCubit>().phoneController,
            onChanged: (value) {
              if (autovalidateMode == AutovalidateMode.disabled) {
                setState(() {
                  autovalidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
            validator: (value) {
              return validatorOfPhone(context, value);
            },
          ),
          SizedBox(height: 16),

          AppTextField(
            hintText: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
            controller: context.read<SignUpCubit>().emailController,
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
            hintText: S.of(context).password,
            obscureText: !isPasswordVisible,
            controller: context.read<SignUpCubit>().passwordController,
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
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              child: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),

          SizedBox(height: 16),
          AppTextField(
            hintText: S.of(context).confirmPassword,
            obscureText: !isConfirmPasswordVisible,
            controller: context.read<SignUpCubit>().confirmPasswordController,
            onChanged: (value) {
              if (autovalidateMode == AutovalidateMode.disabled) {
                setState(() {
                  autovalidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
            validator: (value) {
              if (value !=
                  context.read<SignUpCubit>().passwordController.text) {
                return S.of(context).passwordsDoNotMatch;
              }
              return null;
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPasswordVisible = !isConfirmPasswordVisible;
                });
              },
              child: Icon(
                isConfirmPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
