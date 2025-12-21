import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: AppTextStyles.bold18(
                context,
              ).copyWith(color: AppColors.grey100),
            ),
            Text(
              'How Are you Today?',
              style: AppTextStyles.regular12(
                context,
              ).copyWith(color: AppColors.grey80),
            ),
          ],
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.grey20,
          child: SvgPicture.asset(Assets.svgNotivication),
        ),
      ],
    );
  }
}
