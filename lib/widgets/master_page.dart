import 'package:agency/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/configuration.dart';
import 'networkimage_widget.dart';

Widget masterPage(
  Widget child,
) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: Get.size.height,
                  width: Get.size.width,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: cachedNetworkImage(
                    "https://images.trvl-media.com/lodging/66000000/65730000/65726800/65726788/fb7048a5.jpg",
                    BoxFit.fill,
                    'coverPhoto',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: 0,
                  child: Container(
                    height: Get.size.height,
                    width: Get.size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.5),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                    child: limitScreen(
                  Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: child),
                ))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
