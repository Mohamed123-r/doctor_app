import 'package:flutter/material.dart';
import 'widgets/doctors_list_section.dart';
import 'widgets/home_banner_doctor.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/speciality_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              HomeTopBar(),
              SizedBox(height: 12),
              HomeBannerDoctor(),
              SizedBox(height: 32),
              SpecialitySection(),
              SizedBox(height: 32),
              DoctorsListSection(),
            ],
          ),
        ),
      ),
    );
  }
}
