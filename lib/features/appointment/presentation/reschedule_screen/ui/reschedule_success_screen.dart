import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RescheduleSuccessScreen extends StatelessWidget {
  const RescheduleSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var doctor = {
      "name": "Dr. John Doe",
      "phone": "+1 234 567 890",
      "degree": "MD, Cardiology",
      "price": "150",
      "gender": "male",
    };

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
        title: Text('Details', style: AppTextStyles.semibold18(context)),

        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: AppButton(
          title: "Done",
          onPressed: () {
            context.pop();
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 72),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32),
                  Icon(
                    Icons.check_circle,
                    size: 100,
                    color: AppColors.secondaryFillGreen,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Booking has been rescheduled',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.medium20(context),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Booking Information',
              style: AppTextStyles.semibold16(context),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.secondarySurfaceBlue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: SvgPicture.asset(Assets.svgCalendar2),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Date & Time',
                            style: AppTextStyles.semibold14(context),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Wednesday, 08 May 2023',
                            style: AppTextStyles.regular12(
                              context,
                            ).copyWith(color: AppColors.body),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '08.30 AM',
                            style: AppTextStyles.regular12(
                              context,
                            ).copyWith(color: AppColors.body),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(color: AppColors.grey40, thickness: 1, height: 0),
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.secondarySurfaceGreen,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: SvgPicture.asset(Assets.svgClipboardText),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Appointment Type',
                            style: AppTextStyles.semibold14(context),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Video Call',
                            style: AppTextStyles.regular12(
                              context,
                            ).copyWith(color: AppColors.body),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(color: AppColors.grey40, thickness: 1, height: 0),
                ],
              ),
            ),

            SizedBox(height: 16),
            Text(
              'Doctor Information',
              style: AppTextStyles.semibold16(context),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
                        doctor["gender"] == "male"
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
                          doctor["name"] ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.bold16(
                            context,
                          ).copyWith(color: AppColors.grey100),
                        ),

                        const SizedBox(height: 4),
                        Text(
                          "Degree / ${doctor["degree"]}",
                          style: AppTextStyles.medium14(
                            context,
                          ).copyWith(color: AppColors.body),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$${doctor["price"] ?? ''} / visit',
                          style: AppTextStyles.medium14(
                            context,
                          ).copyWith(color: AppColors.body),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
