import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
class SelectTimeSection extends StatefulWidget {
  const SelectTimeSection({super.key});

  @override
  State<SelectTimeSection> createState() => _SelectTimeSectionState();
}

class _SelectTimeSectionState extends State<SelectTimeSection> {
  String selectedTime = '08.30 AM';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        // Select Time
        Text('Available time', style: AppTextStyles.semibold16(context)),
        SizedBox(height: 16),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 3,
          children: [
            ...[
              '08.30 AM',
              '09.00 AM',
              '10.30 AM',
              '11.00 AM',
              '12.30 PM',
              '01.00 PM',
            ].map((time) {
              final isSelected = time == selectedTime;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTime = time;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primary100
                        : AppColors.secondarySurfaceText,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      time,
                      style: AppTextStyles.medium14(context).copyWith(
                        color: isSelected ? AppColors.white : AppColors.grey60,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
