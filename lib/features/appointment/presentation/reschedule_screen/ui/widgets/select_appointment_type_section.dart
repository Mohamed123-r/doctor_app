import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../generated/l10n.dart';

class SelectAppointmentTypeSection extends StatefulWidget {
  const SelectAppointmentTypeSection({super.key});

  @override
  State<SelectAppointmentTypeSection> createState() =>
      _SelectAppointmentTypeSectionState();
}

class _SelectAppointmentTypeSectionState
    extends State<SelectAppointmentTypeSection> {
  int appointmentType = 0; // 0: In Person, 1: Video Call, 2: Phone Call

  late List<Map> appointmentTypes = [
    {
      'name': S.of(context).inPerson,
      'icon': Assets.svgProfile2user,
      'color': AppColors.secondarySurfaceBlue,
    },
    {
      'name': S.of(context).videoCall,
      'icon': Assets.svgVideo,
      'color': AppColors.secondarySurfaceGreen,
    },
    {
      'name': S.of(context).phoneCall,
      'icon': Assets.svgCall,
      'color': AppColors.secondarySurfaceRed,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        // Appointment Type
        Text(
          S.of(context).appointmentType,
          style: AppTextStyles.semibold16(context),
        ),
        SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: appointmentTypes.length,
          itemBuilder: (context, index) {
            final _ = index == appointmentType;

            return InkWell(
              onTap: () {
                setState(() {
                  appointmentType = index;
                });
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: appointmentTypes[index]['color'],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  appointmentTypes[index]['icon'],
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              appointmentTypes[index]['name'],
                              style: AppTextStyles.regular14(context),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Radio<String>(
                          value: index.toString(),
                          groupValue: appointmentType.toString(),
                          side: BorderSide(color: AppColors.grey60),
                          onChanged: (value) {
                            setState(() {
                              appointmentType = index;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  Divider(color: AppColors.grey40, thickness: 1, height: 0),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
