import 'package:doctor_app/core/routing/on_generate_route.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/helpers/constants.dart';
import 'core/theming/locale_cubit.dart';
import 'generated/l10n.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => LocaleCubit())],
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: locale,
            title: 'Doctor App',
            theme: ThemeData(
              primaryColor: AppColors.primary100,
              scaffoldBackgroundColor: AppColors.backgroundWhite,
              fontFamily: locale == Locale('en') ? 'Inter' : 'Cairo',
            ),
            initialRoute: isLoggedInUser ? Routes.home : Routes.onboarding,
            onGenerateRoute: appRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}
