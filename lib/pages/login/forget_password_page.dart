import 'package:agency/constants.dart';
import 'package:agency/pages/login/widgets/login_header.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(""),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 768),
            child: Column(
              children: [
                LoginPageHeader(),
                Container(
                  margin: const EdgeInsets.all(defaultPadding),
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding * 3,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Reset your password',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: defaultPadding),
                      const Text(
                        'Please enter your number. We will send a code\nto your phone to reset your password.',
                      ),
                      const SizedBox(height: defaultPadding),
                      const Text("Phone Number"),
                      const SizedBox(height: 8),
                      TextFormField(
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: defaultPadding),
                      const SizedBox(height: defaultPadding),
                      SizedBox(
                          width: double.infinity,
                          child: defaultButton(
                              text: "Send me link",
                              press: () =>
                                  Get.toNamed(AppRoutes.passwordReset))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
