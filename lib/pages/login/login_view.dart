import 'package:agency/pages/login/login_controller.dart';
import 'package:agency/pages/login/widgets/dont_have_account_row.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/background_wrapper.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:agency/widgets/networkimage_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../utils/configuration.dart';
import '../../widgets/master_page.dart';
import '../../widgets/widgets.dart';
import 'widgets/join_us.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final LoginController _controller = Get.put(LoginController());
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return masterPage(Row(
      children: [
        if (GetPlatform.isDesktop)
          Expanded(
            child: joinUs(),
          ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2, vertical: defaultPadding),
            margin: const EdgeInsets.all(defaultPadding * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                      left: defaultPadding,
                      right: defaultPadding,
                      top: 0,
                      bottom: 0),
                  margin: const EdgeInsets.all(defaultPadding),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        cachedNetworkImage(
                          bonusLogo,
                          BoxFit.contain,
                          'login_header',
                        ),
                        greyLine(),
                        formInput("EMAIL",
                            isRequired: true, hintText: 'Kullanıcı Adı'),
                        Obx(() => formPassword(
                            "PASSWORD", _controller.showPassword.value,
                            onTap: () => _controller.showPassword.value =
                                !_controller.showPassword.value,
                            hintText: 'Şifre')),
                        defaultButton(
                            press: () => Get.toNamed(AppRoutes
                                .home), //(_controller.handleLogin(formKey)),
                            text: "Giriş Yapın"),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.forgotPassword);
                            },
                            child: const Text('Şifremi Unuttum'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
