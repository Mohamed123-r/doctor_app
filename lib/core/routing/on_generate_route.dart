import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/home/presentation/cubits/specializations_cubit.dart';
import 'package:doctor_app/features/home/presentation/home_screen.dart';
import 'package:doctor_app/features/logIn/presentation/cubits/login_cubit.dart';
import 'package:doctor_app/features/logIn/presentation/login_screen.dart';
import 'package:doctor_app/features/onBoarding/presentation/on_boarding_screen.dart';
import 'package:doctor_app/features/profile/presentation/language_screen/ui/language_screen.dart';
import 'package:doctor_app/features/profile/presentation/profile_informaion_screen/ui/profile_information_screen.dart';
import 'package:doctor_app/features/profile/presentation/profile_screen/ui/profile_screen.dart';
import 'package:doctor_app/features/profile/presentation/screens/FAQ_screen/ui/FAQ_screen.dart';
import 'package:doctor_app/features/profile/presentation/setting_screen/ui/setting_screen.dart';
import 'package:doctor_app/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/presentation/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: SignUpScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<SpecializationsCubit>()..fetchSpecializations(),
            child: HomeScreen(),
          ),
        );
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case Routes.profileInformation:
        return MaterialPageRoute(builder: (_) => ProfileInformationScreen());
      case Routes.setting:
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case Routes.FAQ:
        return MaterialPageRoute(builder: (_) => FAQScreen());
      case Routes.language:
        return MaterialPageRoute(builder: (_) => LanguageScreen());
      default:
        return null;
    }
  }
}
