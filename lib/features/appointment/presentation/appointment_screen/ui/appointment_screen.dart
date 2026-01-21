import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppointmentScreen extends StatefulWidget {
  const MyAppointmentScreen({super.key});

  @override
  State<MyAppointmentScreen> createState() => _MyAppointmentScreenState();
}

class _MyAppointmentScreenState extends State<MyAppointmentScreen> {
  int selectedTab = 0; // 0: Upcoming, 1: Completed, 2: Cancelled

  final List<String> tabs = ['Upcoming', 'Completed', 'Cancelled'];

  final doctor = {
    "name": "Dr. John Doe",
    "phone": "+1 234 567 890",
    "degree": "MD, Cardiology",
    "price": "150",
    "gender": "male",
  };

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
        title: Text('My Appointment', style: AppTextStyles.semibold18(context)),

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
          SizedBox(width: 16),
        ],
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: tabs.asMap().entries.map((entry) {
                int idx = entry.key;
                String title = entry.value;
                bool isSelected = selectedTab == idx;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedTab = idx),
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.bold14(context).copyWith(
                            color: isSelected
                                ? AppColors.primary100
                                : AppColors.grey60,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 2,
                          color: isSelected
                              ? AppColors.primary100
                              : AppColors.grey40,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: 3, // demo data
              itemBuilder: (context, index) {
                bool isUpcoming = selectedTab == 0;
                bool isCancelled = selectedTab == 2;

                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey40,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!isUpcoming) ...[
                          Text(
                            isCancelled
                                ? 'Appointment cancelled'
                                : 'Appointment done',
                            style: AppTextStyles.regular12(context).copyWith(
                              color: isCancelled
                                  ? AppColors.secondaryFillRed
                                  : AppColors.secondaryFillGreen,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Wed, 17 May | 08.30 AM",
                            style: AppTextStyles.medium12(
                              context,
                            ).copyWith(color: AppColors.body),
                          ),
                          SizedBox(height: 8),
                          Divider(height: 0, color: AppColors.grey40),
                          SizedBox(height: 12),
                        ],
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
                                  isUpcoming
                                      ? Text(
                                          "Wed, 17 May | 08.30 AM",
                                          style: AppTextStyles.medium14(
                                            context,
                                          ).copyWith(color: AppColors.body),
                                        )
                                      : Text(
                                          '\$${doctor["price"] ?? ''} / visit',
                                          style: AppTextStyles.medium14(
                                            context,
                                          ).copyWith(color: AppColors.body),
                                        ),
                                ],
                              ),
                            ),
                            if (isUpcoming)
                              SvgPicture.asset(
                                Assets.svgMessageText,
                                fit: BoxFit.scaleDown,
                              ),
                          ],
                        ),
                        if (isUpcoming) ...[
                          SizedBox(height: 16),
                          Divider(height: 0, color: AppColors.grey40),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppButton(
                                title: 'Cancel Appointment',
                                isSecondary: true,
                                onPressed: () {},
                                isMin: true,
                              ),

                              AppButton(
                                title: 'Reschedule',
                                onPressed: () {},
                                isMin: true,
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
