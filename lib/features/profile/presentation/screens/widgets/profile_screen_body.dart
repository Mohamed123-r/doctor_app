import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/profile/presentation/screens/widgets/build_profile_item.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Text('Omar Ahmed', style: AppTextStyles.semibold20(context)),
                const SizedBox(height: 4),

                Text(
                  'omarahmed14@gmail.com',
                  style: AppTextStyles.regular14(
                    context,
                  ).copyWith(color: AppColors.grey60),
                ),
                const SizedBox(height: 32),
                Container(
                  height: 60,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'My Appointment',
                          style: AppTextStyles.regular12(context),
                        ),

                        Container(
                          width: 1,
                          height: 44,
                          color: AppColors.grey40,
                        ),

                        Text(
                          'Medical records',
                          style: AppTextStyles.regular12(context),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                BuildProfileItem(
                  icon: Assets.svgPersonalcard,
                  iconColor: AppColors.primary20,
                  title: 'Edit Profile',
                ),
                BuildProfileItem(
                  icon: Assets.svgDirectboxNotif,
                  iconColor: AppColors.secondarySurfaceGreen,
                  title: 'My Test & Diagnostic',
                ),
                BuildProfileItem(
                  icon: Assets.svgWallet,
                  iconColor: AppColors.secondarySurfaceRed,
                  title: 'Payment Methods',
                ),
              ],
            ),
          ),
          Positioned(
            top: -60,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: Image.asset(
                Assets.imagesProfile,
                fit: BoxFit.cover,
              ).image,
            ),
          ),
        ],
      ),
    );
  }
}

