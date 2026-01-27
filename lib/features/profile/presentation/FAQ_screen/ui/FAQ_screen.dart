import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:doctor_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/FAQ_section.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

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
        title: Text(S.of(context).faq, style: AppTextStyles.semibold18(context)),
        actions: [
          Center(
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.grey40),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                child: SvgPicture.asset(
                  Assets.svgSearchNormal,
                  fit: BoxFit.scaleDown,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),

          const SizedBox(width: 16),
        ],
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: FAQSection(),
    );
  }
}
