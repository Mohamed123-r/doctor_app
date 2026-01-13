import 'package:doctor_app/features/home/presentation/widgets/doctor_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'widgets/home_banner_doctor.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              HomeTopBar(),
              SizedBox(height: 12),
              HomeBannerDoctor(),
              SizedBox(height: 32),
              SpecializationsBlocBuilder(),
              SizedBox(height: 32),
              DoctorBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
