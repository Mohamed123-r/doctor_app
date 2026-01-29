import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/constants.dart';
import '../../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../../generated/l10n.dart';
import 'build_profile_item.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({super.key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  String userName = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final name = await SharedPrefHelper.getString(SharedPrefKeys.userName);
    final email = await SharedPrefHelper.getSecuredString(
      SharedPrefKeys.userEmail,
    );

    setState(() {
      userName = name;
      this.email = email;
    });
  }

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
                Text(userName, style: AppTextStyles.semibold20(context)),
                const SizedBox(height: 4),

                Text(
                  email,
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
                        Expanded(
                          child: InkWell(

                            onTap: () {
                              context.pushNamed(Routes.myAppointment);
                            },
                            child: Center(
                              child: Text(
                                S.of(context).myAppointment,
                                style: AppTextStyles.regular12(context),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 1,
                          height: 44,
                          color: AppColors.grey40,
                        ),

                        Expanded(
                          child: InkWell(
                            onTap: () {
                              context.pushNamed(Routes.medicalRecords);
                            },
                            child: Center(
                              child: Text(
                                S.of(context).medicalRecords,
                                style: AppTextStyles.regular12(context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.profileInformation);
                  },
                  child: BuildProfileItem(
                    icon: Assets.svgPersonalcard,
                    iconColor: AppColors.primary20,
                    title: S.of(context).personalInformation,
                  ),
                ),
                BuildProfileItem(
                  icon: Assets.svgDirectboxNotif,
                  iconColor: AppColors.secondarySurfaceGreen,
                  title: S.of(context).myTestDiagnostic,
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
