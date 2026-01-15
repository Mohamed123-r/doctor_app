import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'widgets/profile_information_screen_body.dart';

class ProfileInformationScreen extends StatelessWidget {
  const ProfileInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.grey40),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              child: const Icon(Icons.arrow_back_ios_new, size: 18),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        title: Text(
          'Profile Information',
          style: AppTextStyles.semibold18(context),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: AppButton(title: "Save", onPressed: () {}),
      ),
      body: ProfileInformationScreenBody(),
    );
  }
}
