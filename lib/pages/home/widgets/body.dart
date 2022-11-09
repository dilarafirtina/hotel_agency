import 'package:agency/pages/home/widgets/bottom_slider.dart';
import 'package:agency/pages/home/widgets/dashboard.dart';
import 'package:agency/pages/home/widgets/home_header.dart';
import 'package:agency/pages/home/widgets/image_slider.dart';
import 'package:agency/pages/home/widgets/info_box.dart';
import 'package:agency/pages/home/widgets/section_with_title.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            homeHeader(context),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: InfoBox(context),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: dashboard(context),
            ),
            const SizedBox(
              height: 16,
            ),
            SectionTitle('Kampanyalar', theme, AppRoutes.home),
            const SizedBox(
              height: 8,
            ),
            ImageSlider(),
            // BottomSlider(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
