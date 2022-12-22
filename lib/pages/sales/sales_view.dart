import 'package:agency/pages/sales/sale_grid.dart';
import 'package:agency/pages/sales/sales.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/custom_header.dart';
import 'package:agency/widgets/default_button.dart';
import 'package:agency/widgets/master_page.dart';
import 'package:animations/animations.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../utils/configuration.dart';
import '../../widgets/widgets.dart';
import 'widgets/sales_data.dart';

class SalesView extends StatelessWidget {
  SalesView({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt pageIndex = 0.obs;

    List<Widget> pageList = <Widget>[
      salesGrid(context, [...completed, ...preConfirmed, ...cancelled]),
      salesGrid(context, completed),
      salesGrid(context, preConfirmed),
      salesGrid(context, cancelled)
    ];

    return masterPage(
      Column(
        children: [
          customHeader("Satışlarım"),
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
                child: Column(
                  children: [
                    Obx(() => pageList[pageIndex.value]),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.all(defaultPadding),
                  width: 200,
                  child: defaultButton(
                      text: "YENİ REZERVASYON",
                      press: () => Get.toNamed(AppRoutes.new_reservation))),
              Container(
                margin: EdgeInsets.all(defaultPadding),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: darkGrey, width: 1),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Toplam Bonus",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: darkGrey),
                      ),
                      const Text(""),
                      const SizedBox(
                        height: defaultPadding / 2,
                      ),
                      Text(
                        "1357",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600, color: darkGrey),
                      ),
                    ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
