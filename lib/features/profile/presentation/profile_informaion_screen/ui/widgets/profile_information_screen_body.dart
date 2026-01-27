import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_text_field.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../generated/l10n.dart';

class ProfileInformationScreenBody extends StatelessWidget {
  const ProfileInformationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 44),
            Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: Image.asset(
                    Assets.imagesProfile,
                    fit: BoxFit.cover,
                  ).image,
                ),
                Positioned(
                  bottom: 4,
                  right: 4,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.grey40,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.white, width: 2),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.svgEdit,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 44),
            AppTextField(
              hintText: S.of(context).fullName,
              initialValue: 'Omar Ahmed',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16),
            AppTextField(
              hintText: S.of(context).emailAddress,
              initialValue: 'omarahmed14@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            AppTextField(
              hintText: S.of(context).password,
              initialValue: '********',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            SizedBox(height: 16),
            AppTextField(
              hintText: S.of(context).phoneNumber,
              initialValue: '+1 234 567 890',
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 24),
            Text(
              S
                  .of(context)
                  .whenYouSetUpYourPersonalInformationSettingsYouShould,
              style: AppTextStyles.regular12(
                context,
              ).copyWith(color: AppColors.body),
            ),
          ],
        ),
      ),
    );
  }
}
