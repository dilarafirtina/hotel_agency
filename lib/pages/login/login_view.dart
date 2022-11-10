import 'package:agency/pages/home/widgets/home_header.dart';
import 'package:agency/pages/login/login_controller.dart';
import 'package:agency/pages/login/widgets/dont_have_account_row.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/background_wrapper.dart';
import 'package:agency/widgets/custom_header.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:agency/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final LoginController _controller = Get.put(LoginController());
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 768),
          child: SafeArea(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 250,
                      height: 70,
                      margin: const EdgeInsets.only(top: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      child: cachedNetworkImage(
                          logoImage, BoxFit.contain, 'home_header'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const IntroLoginBackgroundWrapper(
                        imageURL:
                            "https://images.trvl-media.com/lodging/66000000/65730000/65726800/65726788/fb7048a5.jpg"),
                    SingleChildScrollView(
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.white),
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2,
                            vertical: defaultPadding),
                        margin: const EdgeInsets.all(defaultPadding * 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              color: Colors.white,
                              padding: EdgeInsets.all(defaultPadding),
                              margin: EdgeInsets.all(defaultPadding),
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    cachedNetworkImage(
                                      bonusLogo,
                                      BoxFit.contain,
                                      'login_header',
                                    ),
                                    formLabel('Kullanıcı Adı'),
                                    formInput("EMAIL", isRequired: true),
                                    formLabel('Şifre'),
                                    Obx(() => formPassword("PASSWORD",
                                        _controller.showPassword.value,
                                        onTap: () => _controller
                                                .showPassword.value =
                                            !_controller.showPassword.value)),
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
                            Container(
                              padding: EdgeInsets.all(defaultPadding),
                              margin: EdgeInsets.all(defaultPadding),
                              child: DontHaveAccountRow(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
