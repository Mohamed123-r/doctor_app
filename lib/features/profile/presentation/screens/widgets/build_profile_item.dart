import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildProfileItem extends StatelessWidget {
  const BuildProfileItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,buildP
  });

  final String icon;

  final Color iconColor;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(child: SvgPicture.asset(icon)),
              ),
              const SizedBox(width: 16),
              Text(title, style: AppTextStyles.regular14(context)),
            ],
          ),
          Divider(color: AppColors.grey40, thickness: 1, height: 32),
        ],
      ),
    );
  }
}
