import 'package:agency/not_found_view.dart';
import 'package:agency/pages/login/login_view.dart';
import 'package:agency/routes.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme/Themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Opex Messaging',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      theme: lightTheme,
      getPages: Routes.routes,
      initialRoute: Routes.INITIAL,
      unknownRoute: GetPage(
          name: AppRoutes.notFoundPage, page: () => const UnknownView()),
      home: LoginView(),
    );
  }
}
