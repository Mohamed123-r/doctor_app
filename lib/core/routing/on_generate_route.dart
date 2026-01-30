import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/appointment/presentation/appointment_screen/ui/appointment_screen.dart';
import 'package:doctor_app/features/home/presentation/doctor_details_screen/ui/doctor_details_screen.dart';
import 'package:doctor_app/features/home/presentation/home/home_screen.dart';
import 'package:doctor_app/features/logIn/presentation/cubits/login_cubit.dart';
import 'package:doctor_app/features/logIn/presentation/login_screen.dart';
import 'package:doctor_app/features/onBoarding/presentation/on_boarding_screen.dart';
import 'package:doctor_app/features/profile/presentation/language_screen/ui/language_screen.dart';
import 'package:doctor_app/features/profile/presentation/profile_information_screen/presentation/ui/profile_information_screen.dart';
import 'package:doctor_app/features/profile/presentation/profile_screen/ui/profile_screen.dart';
import 'package:doctor_app/features/profile/presentation/setting_screen/ui/setting_screen.dart';
import 'package:doctor_app/features/search/presentation/search_screen/ui/search_screen.dart';
import 'package:doctor_app/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/presentation/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/appointment/presentation/reschedule_screen/ui/reschedule_screen.dart';
import '../../features/appointment/presentation/reschedule_screen/ui/reschedule_success_screen.dart';
import '../../features/home/presentation/home/cubits/specializations_cubit.dart';
import '../../features/profile/presentation/FAQ_screen/ui/FAQ_screen.dart';
import '../../features/profile/presentation/medical_records_screen/ui/medical_records_screen.dart';
import '../../features/search/presentation/search_screen/logic/search_cubit.dart';

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
      case Routes.doctorDetails:
        return MaterialPageRoute(
          builder: (_) =>
              DoctorDetailsScreen(doctor: settings.arguments as dynamic),
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
      case Routes.myAppointment:
        return MaterialPageRoute(builder: (_) => MyAppointmentScreen());
      case Routes.medicalRecords:
        return MaterialPageRoute(builder: (_) => MedicalRecordsScreen());
      case Routes.reschedule:
        return MaterialPageRoute(builder: (_) => RescheduleScreen());
      case Routes.successReschedule:
        return MaterialPageRoute(builder: (_) => RescheduleSuccessScreen());
      case Routes.search:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (context) => getIt<SearchCubit>(),
          child: SearchScreen(),
        ));
      default:
        return null;
    }
  }
}
