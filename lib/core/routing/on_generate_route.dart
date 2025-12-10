import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/logIn/presentation/login_screen.dart';
import 'package:doctor_app/features/onBoarding/presentation/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined '),
            ),
          ),
        );
    }
  }
}
