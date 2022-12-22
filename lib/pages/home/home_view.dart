import 'package:flutter/material.dart';

import '../../utils/app_routes.dart';
import '../../widgets/master_page.dart';
import 'widgets/dashboard.dart';
import 'widgets/home_header.dart';
import 'widgets/image_slider.dart';
import 'widgets/info_box.dart';
import 'widgets/section_with_title.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return masterPage(
      Column(
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
          SectionTitle('Kampanyalar', AppRoutes.home),
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
    );
  }
}
