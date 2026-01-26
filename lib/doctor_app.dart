import 'package:doctor_app/core/routing/on_generate_route.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'core/helpers/constants.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        primaryColor: AppColors.primary100,
        scaffoldBackgroundColor: AppColors.backgroundWhite,
        fontFamily: 'Inter',
      ),
      initialRoute: isLoggedInUser ? Routes.home : Routes.onboarding,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
