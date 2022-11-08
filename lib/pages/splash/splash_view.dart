import 'package:agency/constants.dart';
import 'package:agency/pages/login/widgets/intro_page_background_wrapper.dart';
import 'package:agency/theme.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:agency/widgets/round_backgroud_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IntroLoginBackgroundWrapper(
              imageURL:
                  "https://w0.peakpx.com/wallpaper/236/922/HD-wallpaper-pool-blue-holiday-maldives-sunbeds-pools-nagture-pool-relax-resort-summer-sunny-vacation.jpg"),
          Column(
            children: [
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NG Bonus Sistemine',
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'HOŞ GELDİNİZ',
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontWeight: FontWeight.w700, color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 5),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const SizedBox(height: defaultPadding),
                    SizedBox(
                        width: double.infinity,
                        child: defaultButton(
                            press: () => Get.toNamed(
                                  AppRoutes.home,
                                ),
                            text: "Devam Et"))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
