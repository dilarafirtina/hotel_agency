import 'package:agency/not_found_view.dart';
import 'package:agency/pages/splash/splash_view.dart';
import 'package:agency/routes.dart';
import 'package:agency/theme.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Opex Messaging',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      theme: lightTheme,
      getPages: Routes.routes,
      initialRoute: Routes.INITIAL,
      unknownRoute: GetPage(
          name: AppRoutes.notFoundPage, page: () => const UnknownView()),
      home: SplashView(),
    );
  }
}
