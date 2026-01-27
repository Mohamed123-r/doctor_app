import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildSettingItem extends StatelessWidget {
  const BuildSettingItem({
    super.key,
    required this.icon,
    required this.title,
    this.isTextRed = false,
    required this.onTap,
  });

  final String icon;

  final String title;
  final bool isTextRed;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Row(
                children: [
                  Center(child: SvgPicture.asset(icon)),

                  const SizedBox(width: 16),
                  Text(
                    title,
                    style: AppTextStyles.regular14(context).copyWith(
                      color: isTextRed
                          ? AppColors.secondaryFillRed
                          : AppColors.black,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppColors.grey100,
                  ),
                ],
              ),
            ),
            Divider(color: AppColors.grey40, thickness: 1, height: 0),
          ],
        ),
      ),
    );
  }
}
