import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agency/pages/logout/logout_controller.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:agency/widgets/wave.dart';

class LogoutView extends StatelessWidget {
  LogoutView({Key? key}) : super(key: key);
  final LogoutController _controller = Get.put(LogoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 768),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      color: Colors.grey.shade100,
                      height: 200,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text("We are sorry to see you go!",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        cachedNetworkImage(
                          "https://st4.depositphotos.com/35530942/37862/v/450/depositphotos_378626418-stock-illustration-digital-detox-concept-happy-woman.jpg",
                          BoxFit.contain,
                          'logout',
                        ),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: defaultButton(
                                text: "Continue",
                                press: () => Get.toNamed(AppRoutes.home)))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
