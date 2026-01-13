import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary100,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,

            size: 18,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Profile',
          style: AppTextStyles.semibold18(
            context,
          ).copyWith(color: AppColors.white),
        ),
        actions: [
          const SizedBox(width: 48),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.svgSetting),
          ),
        ],
        backgroundColor: AppColors.primary100,
        elevation: 0,
      ),
      body: ProfileScreenBody(),
    );
  }
}
