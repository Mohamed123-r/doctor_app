import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class InputSection extends StatefulWidget {
  const InputSection({super.key});

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  bool obscureText = true;
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children: [
          AppTextField(
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          AppTextField(
            hintText: "Password",
            obscureText: obscureText,
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
