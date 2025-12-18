import 'package:doctor_app/core/routing/on_generate_route.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() async {
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

