import 'package:agency/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_routes.dart';
import '../../../utils/configuration.dart';
import '../../../widgets/default_button.dart';

Widget joinUs() {
  return Container(
    decoration: const BoxDecoration(color: Colors.white),
    padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding / 2, vertical: defaultPadding),
    margin: const EdgeInsets.all(defaultPadding * 2),
    child: Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.all(defaultPadding),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Bize\nKatılın",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600)),
            SizedBox(
              height: defaultPadding,
            ),
            greyLine(),
            SizedBox(
              height: defaultPadding,
            ),
            const Text(
                "Henüz bir hesabınız yoksa, linke tıklayarak üye olabilirsiniz"),
            SizedBox(
              height: defaultPadding,
            ),
            defaultButton(
                press: () => Get.toNamed(
                    AppRoutes.profile), //(_controller.handleLogin(formKey)),
                text: "ÜYE OL"),
          ]),
    ),
  );
}
