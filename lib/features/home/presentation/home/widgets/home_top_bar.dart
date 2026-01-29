import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/shared_pref_helper.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({super.key});

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  String userName = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final name = await SharedPrefHelper.getString(SharedPrefKeys.userName);

    setState(() {
      userName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${S.of(context).hiOmar} $userName !",
                style: AppTextStyles.bold18(
                  context,
                ).copyWith(color: AppColors.grey100),
              ),
              Text(
                S.of(context).howAreYouToday,
                style: AppTextStyles.regular12(
                  context,
                ).copyWith(color: AppColors.grey80),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.profile);
            },
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.grey20,
              child: Image.asset(Assets.imagesProfile, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
