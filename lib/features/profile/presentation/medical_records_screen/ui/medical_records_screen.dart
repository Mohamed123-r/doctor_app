import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/profile/presentation/medical_records_screen/ui/widgets/medical_records_body.dart';
import 'package:flutter/material.dart';

class MedicalRecordsScreen extends StatelessWidget {
  const MedicalRecordsScreen({super.key});

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
            "Medical Record",
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
        body: const MedicalRecordsBody());
  }
}