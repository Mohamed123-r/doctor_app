import 'package:doctor_app/core/routing/on_generate_route.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.green,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();

  //await checkIfLoggedInUser();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}

// Future<void> checkIfLoggedInUser() async {
//   String? userToken =
//   await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
//   if (userToken != null && userToken.isNotEmpty) {
//     isLoggedInUser = true;
//   } else {
//     isLoggedInUser = false;
//   }
// }

