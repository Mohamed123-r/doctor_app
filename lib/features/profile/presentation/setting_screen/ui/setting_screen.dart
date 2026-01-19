import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'widgets/setting_screen_body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
        title: Text('Settings', style: AppTextStyles.semibold18(context)),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SettingScreenBody(),
    );
  }
}
