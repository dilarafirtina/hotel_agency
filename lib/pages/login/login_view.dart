import 'package:agency/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:agency/constants.dart';
import 'package:agency/pages/login/widgets/dont_have_account_row.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:agency/widgets/form_master_widget.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'widgets/login_header.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final LoginController _controller = Get.put(LoginController());
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    String loginType = Get.arguments;
    _controller.loginType.value =
        Get.arguments != null ? Get.arguments : "inHouse";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(""),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoginPageHeader(),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        formLabel(
                            loginType == "password" ? 'Email' : 'Room Number'),
                        formInput(loginType == "password" ? "EMAIL" : "ROOMNO",
                            isRequired: true),
                        formLabel(
                            loginType == "password" ? 'Password' : "Birthdate"),
                        loginType == "password"
                            ? Obx(() => formPassword(
                                "PASSWORD", _controller.showPassword.value,
                                onTap: () => _controller.showPassword.value =
                                    !_controller.showPassword.value))
                            : formDatePicker("BDATE", InputType.date, formKey,
                                initialValue: null,
                                minDate: DateTime.parse(
                                    "19000101")) //initialValue: _contr
                        ,
                        loginType == "password"
                            ? Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.forgotPassword);
                                  },
                                  child: const Text('Forget Password?'),
                                ),
                              )
                            : SizedBox(),
                        defaultButton(
                            press: () => (_controller.handleLogin(formKey)),
                            text: "Login"),
                      ],
                    ),
                  ),
                ),
                loginType == "password" ? DontHaveAccountRow() : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
