import 'package:doctor_app/features/profile/presentation/medical_records_screen/ui/widgets/medical_records_body.dart';
import 'package:flutter/material.dart';

class MedicalRecordsScreen extends StatelessWidget {
  const MedicalRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const MedicalRecordsBody());
  }
}