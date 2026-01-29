import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class MedicalRecordsBody extends StatelessWidget {
  const MedicalRecordsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        _buildMonthSection(context, 'This Month', [
          _buildRecord(context, date: 'Feb 25', title: 'End of observation'),
          _buildRecord(
            context,
            date: 'Feb 25',
            title: 'Blood Analysis',
            rbc: '4.10 million cells/mcL',
            hemoglobin: '142 grams/L',
            hematocrit: '33.6%',
            wbc: '3,850 cells/mcL',
          ),
          _buildRecord(
            context,
            date: 'Feb 1',
            title: 'Blood Analysis',
            rbc: '4.10 million cells/mcL',
            hemoglobin: '142 grams/L',
            hematocrit: '33.6%',
            wbc: '3,850 cells/mcL',
          ),
          _buildRecord(
            context,
            date: 'dec 25',
            title: 'Blood Analysis',
            rbc: '4.10 million cells/mcL',
            hemoglobin: '142 grams/L',
            hematocrit: '33.6%',
            wbc: '3,850 cells/mcL',
          ),
        ]),
        SizedBox(height: 32),
        _buildMonthSection(context, 'January', [
          _buildRecord(context, date: 'Feb 25', title: 'End of observation'),
          _buildRecord(
            context,
            date: 'Feb 25',
            title: 'Blood Analysis',
            rbc: '4.10 million cells/mcL',
            hemoglobin: '142 grams/L',
            hematocrit: '33.6%',
            wbc: '3,850 cells/mcL',
          ),
          _buildRecord(
            context,
            date: 'dec 25',
            title: 'Blood Analysis',
            rbc: '4.10 million cells/mcL',
            hemoglobin: '142 grams/L',
            hematocrit: '33.6%',
            wbc: '3,850 cells/mcL',
          ),
          _buildRecord(
            context,
            date: 'dec 25',
            title: 'Blood Analysis',
            rbc: '4.10 million cells/mcL',
            hemoglobin: '142 grams/L',
            hematocrit: '33.6%',
            wbc: '3,850 cells/mcL',
          ),
        ]),
      ],
    );
  }

  Widget _buildMonthSection(context, String month, List<Widget> records) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(month, style: AppTextStyles.semibold16(context)),
        SizedBox(height: 16),
        ...records,
      ],
    );
  }

  Widget _buildRecord(
    context, {
    required String date,
    required String title,
    String? rbc,
    String? hemoglobin,
    String? hematocrit,
    String? wbc,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Text(
              date,
              style: AppTextStyles.regular14(
                context,
              ).copyWith(color: AppColors.body),
            ),
          ),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.semibold14(context)),
              SizedBox(height: 4),
              rbc != null
                  ? Text(
                      'red blood cell: $rbc',
                      style: AppTextStyles.regular12(
                        context,
                      ).copyWith(color: AppColors.body),
                    )
                  : SizedBox.shrink(),
              hemoglobin != null
                  ? Text(
                      'hemoglobin: $hemoglobin',
                      style: AppTextStyles.regular12(
                        context,
                      ).copyWith(color: AppColors.body),
                    )
                  : SizedBox.shrink(),
              hematocrit != null
                  ? Text(
                      'hematocrit: $hematocrit',
                      style: AppTextStyles.regular12(
                        context,
                      ).copyWith(color: AppColors.body),
                    )
                  : SizedBox.shrink(),
              wbc != null
                  ? Text(
                      'white blood cells: $wbc',
                      style: AppTextStyles.regular12(
                        context,
                      ).copyWith(color: AppColors.body),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
