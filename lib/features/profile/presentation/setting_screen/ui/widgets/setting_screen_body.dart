import 'package:doctor_app/core/helpers/custom_error.dart';
import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/helpers/shared_pref_helper.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'build_setting_item.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        SizedBox(height: 20),
        BuildSettingItem(
          icon: Assets.svgNotivication,
          title: 'Notifications',
          onTap: () {},
        ),
        BuildSettingItem(
          icon: Assets.svgFAQ,
          title: 'FAQ',
          onTap: () {
            context.pushNamed(Routes.FAQ);
          },
        ),
        BuildSettingItem(icon: Assets.svgLock, title: 'Security', onTap: () {}),
        BuildSettingItem(
          icon: Assets.svgLanguageSquare,
          title: 'Language',
          onTap: () {
            context.pushNamed(Routes.language);
          },
        ),
        BuildSettingItem(
          icon: Assets.svgLogout,
          title: 'Log Out',
          isTextRed: true,
          onTap: () => _showLogoutDialog(context),
        ),
      ],
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: AppColors.white,

        title: Text(
          'Logout',
          textAlign: TextAlign.center,
          style: AppTextStyles.medium18(context),
        ),
        content: Text(
          "You'll need to enter your username and password next time you want to login",
          textAlign: TextAlign.center,
          style: AppTextStyles.regular14(context),
        ),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(
              'Cancel',
              style: AppTextStyles.regular16(
                context,
              ).copyWith(color: AppColors.secondaryFillBlue),
            ),
          ),
          TextButton(
            onPressed: () async {
              await successDialog(context, massage: "Logout Successful");
              await SharedPrefHelper.clearAllData();
              context.pushNamedAndRemoveUntil(
                Routes.onboarding,
                (route) => false,
              );
            },
            child: Text(
              'Logout',
              style: AppTextStyles.regular16(
                context,
              ).copyWith(color: AppColors.secondaryFillRed),
            ),
          ),
        ],
      ),
    );
  }
}
