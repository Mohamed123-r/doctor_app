import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../generated/l10n.dart';
import '../../../data/models/specializations_response_model.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key, this.doctor});

  final Doctors? doctor;

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
        title: Text(
          doctor?.name ?? S.of(context).doctorDetails,
          style: AppTextStyles.semibold18(context),
        ),
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
                child: Icon(Icons.more_horiz, color: AppColors.grey100),
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
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButton(title: S.of(context).makeAnAppointment, onPressed: () {})
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.grey40,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        doctor?.gender == "male"
                            ? Assets.imagesOnboardingDoctor
                            : Assets.imagesBannerImage,
                        width: 75,
                        height: 75,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          doctor?.name ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.bold16(
                            context,
                          ).copyWith(color: AppColors.grey100),
                        ),

                        const SizedBox(height: 4),
                        Text(
                          "${doctor?.specialization?.name} | ${doctor?.degree}",
                          style: AppTextStyles.medium14(
                            context,
                          ).copyWith(color: AppColors.body),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          doctor?.phone ?? '',
                          style: AppTextStyles.medium14(
                            context,
                          ).copyWith(color: AppColors.body),
                        ),
                      ],
                    ),
                  ),

                  SvgPicture.asset(
                      Assets.svgMessageText, fit: BoxFit.scaleDown),
                ],
              ),
              SizedBox(height: 24),
              Divider(color: AppColors.grey40, thickness: 1, height: 0),
              SizedBox(height: 24),

              Text(S.of(context).aboutDoctor, style: AppTextStyles.semibold16(context)),
              SizedBox(height: 8),
              Text(
                doctor?.description ?? '',
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),

              SizedBox(height: 12),
              Text(
                "${S.of(context).specializationDoctorspecializationname} ${doctor?.specialization?.name}",
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),
              SizedBox(height: 12),
              Text(
                "${S.of(context).degree} ${doctor?.degree}",
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),
              SizedBox(height: 24),
              Text(S.of(context).appointPrice, style: AppTextStyles.semibold16(context)),
              SizedBox(height: 8),
              Text(

                "${doctor?.appointPrice} ${S.of(context).usdVisit} ",
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),
              SizedBox(height: 24),
              Text(S.of(context).workingTime, style: AppTextStyles.semibold16(context)),
              SizedBox(height: 8),
              Text(

                "${S.of(context).degree} ${doctor?.startTime}",
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),
              SizedBox(height: 4),
              Text(
                "${S.of(context).degree} ${doctor?.endTime}",
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),
              SizedBox(height: 24),
              Text(S.of(context).address, style: AppTextStyles.semibold16(context)),
              SizedBox(height: 8),
              Text(
                "${S.of(context).degree} ${doctor?.city?.name}",
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),
              SizedBox(
                height: 4,

              ),
              Text(
                "${S.of(context).degree} ${doctor?.city?.governrate?.name}",
                style: AppTextStyles.regular14(
                  context,
                ).copyWith(color: AppColors.body),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
