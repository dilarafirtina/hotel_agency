import 'package:agency/pages/bonus/bonus_grid.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/custom_header.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:animations/animations.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../utils/configuration.dart';
import '../../widgets/master_page.dart';
import 'widgets/bonus_data.dart';

class PointsView extends StatelessWidget {
  PointsView({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt pageIndex = 0.obs;

    List<Widget> pageList = <Widget>[
      bonusGrid(context, reservations, "reservation"),
      bonusGrid(context, completed, "completed"),
      bonusGrid(context, preConfirmed, "preConfirmed"),
      bonusGrid(context, cancelled, "cancelled")
    ];

    return masterPage(
      Column(
        children: [
          customHeader("Harcamalarım"),
          Obx(
            () => Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 4,
                    activeColor: const Color(0xFFd4af37),
                    iconSize: 24,
                    curve: Curves.easeOutExpo,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    duration: const Duration(milliseconds: 600),
                    tabBackgroundColor:
                        const Color(0xFFd4af37).withOpacity(0.1),
                    color: Colors.black,
                    tabs: const [
                      GButton(
                        icon: Icons.bookmark_added,
                        text: 'Rezervasyon',
                      ),
                      GButton(
                        icon: Icons.published_with_changes,
                        text: 'Tamamlanan',
                      ),
                      GButton(
                        icon: Icons.task_alt,
                        text: 'Ön Onaylı',
                      ),
                      GButton(
                        icon: Icons.event_busy,
                        text: 'İptal',
                      ),
                    ],
                    selectedIndex: pageIndex.value,
                    onTabChange: (index) {
                      pageIndex.value = index;
                    },
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: PageTransitionSwitcher(
                transitionBuilder: (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return FadeThroughTransition(
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    child: child,
                  );
                },
                child: Obx(() => pageList[pageIndex.value]),
              ),
            ),
          ),
          Row(children: [
            Container(
                margin: EdgeInsets.all(defaultPadding),
                width: 300,
                child: defaultButton(
                    text: "YENİ ODA HARCAMA REZERVASYON",
                    press: () => Get.toNamed(AppRoutes.new_bonus))),
          ]),
        ],
      ),
    );
  }
}
