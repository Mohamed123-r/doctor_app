import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
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
          onTap: () {},
        ),
        BuildSettingItem(
          icon: Assets.svgLogout,
          title: 'Log Out',
          isTextRed: true,
          onTap: () {},
        ),
      ],
    );
  }
}
