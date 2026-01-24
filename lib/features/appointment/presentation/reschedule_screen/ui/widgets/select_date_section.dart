import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class SelectDateSection extends StatefulWidget {
  const SelectDateSection({super.key});

  @override
  State<SelectDateSection> createState() => _SelectDateSectionState();
}

class _SelectDateSectionState extends State<SelectDateSection> {
  DateTime selectedDate = DateTime.now().add(Duration(days: 2));
  int offset = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Select Date
        Row(
          children: [
            Text('Select Date', style: AppTextStyles.semibold16(context)),
            Spacer(),
            GestureDetector(
              child: Text(
                'Set Manual',
                style: AppTextStyles.medium12(
                  context,
                ).copyWith(color: AppColors.primary100),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () =>
                    setState(() => offset = (offset - 5).clamp(0, 30)),
                icon: Icon(Icons.chevron_left),
                padding: EdgeInsets.zero,
              ),
              ...List.generate(4, (i) {
                DateTime day = DateTime.now().add(Duration(days: offset + i));
                bool isSelected = selectedDate.isSameDate(
                  day,
                ); // function: extension DateTime
                return GestureDetector(
                  onTap: () => setState(() => selectedDate = day),
                  child: Container(
                    width: isSelected ? 60 : 55,
                    height: isSelected ? 75 : 65,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary100
                          : AppColors.secondarySurfaceText,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat('EEE').format(day),
                          style: AppTextStyles.semibold14(context).copyWith(
                            color: isSelected
                                ? AppColors.white
                                : AppColors.grey50,
                          ),
                        ),
                        Text(
                          '${day.day}',
                          style: AppTextStyles.semibold14(context).copyWith(
                            color: isSelected
                                ? AppColors.white
                                : AppColors.grey50,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              IconButton(
                onPressed: () =>
                    setState(() => offset = (offset + 5).clamp(0, 30)),
                icon: Icon(Icons.chevron_right),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}