import 'package:doctor_app/core/helpers/custom_error.dart';
import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/helpers/shared_pref_helper.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/helpers/constants.dart';
import '../../../../../../core/networking/dio_factory.dart';
import '../../../../../../generated/l10n.dart';
import 'build_setting_item.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        // BuildSettingItem(
        //   icon: Assets.svgNotivication,
        //   title: 'Notifications',
        //   onTap: () {},
        // ),
        BuildSettingItem(
          icon: Assets.svgFAQ,
          title: S.of(context).faq,
          onTap: () {
            context.pushNamed(Routes.FAQ);
          },
        ),
        // BuildSettingItem(icon: Assets.svgLock, title: 'Security', onTap: () {}),
        BuildSettingItem(
          icon: Assets.svgLanguageSquare,
          title: S.of(context).language,
          onTap: () {
            context.pushNamed(Routes.language);
          },
        ),
        BuildSettingItem(
          icon: Assets.svgLogout,
          title: S.of(context).logOut,
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
          S.of(context).logout,
          textAlign: TextAlign.center,
          style: AppTextStyles.medium18(context),
        ),
        content: Text(
          S.of(context).youllNeedToEnterYourUsernameAndPasswordNextTime,
          textAlign: TextAlign.center,
          style: AppTextStyles.regular14(context),
        ),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(
              S.of(context).cancel,
              style: AppTextStyles.regular16(
                context,
              ).copyWith(color: AppColors.secondaryFillBlue),
            ),
          ),
          TextButton(
            onPressed: () async {
              await successDialog(
                context,
                massage: S.of(context).logoutSuccessful,
              );
              await SharedPrefHelper.clearAllData();
              await SharedPrefHelper.clearAllSecuredData();
              DioFactory.clearDio();
              context.pushNamedAndRemoveUntil(
                Routes.onboarding,
                (route) => false,
              );
              isLoggedInUser = false;
            },
            child: Text(
              S.of(context).logout,
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
