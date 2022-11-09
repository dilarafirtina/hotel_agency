import 'package:agency/constants.dart';
import 'package:agency/utils/app_routes.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customHeader(String? title) {
  return Container(
    decoration: BoxDecoration(color: Colors.white),
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 30,
              hoverColor: Colors.transparent,
              onPressed: () => Get.toNamed(AppRoutes.home),
            ),
            Text(
              title!,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            )
          ],
        ),
        Container(
          width: 250,
          height: 70,
          margin: const EdgeInsets.only(top: 8.0),
          padding: const EdgeInsets.all(8.0),
          child: cachedNetworkImage(logoImage, BoxFit.contain, 'custom_header'),
        ),
      ],
    ),
  );
}
