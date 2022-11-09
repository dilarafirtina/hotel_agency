import 'package:agency/constants.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:agency/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showLanguageSettings() {
  Get.bottomSheet(Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: Get.isDarkMode ? Colors.grey.shade900 : Colors.grey.shade200,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        )),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Dil Seçin",
        ),
        const SizedBox(height: 16),
        ListTile(
          leading: Container(
              width: 36,
              child: cachedNetworkImage(trImage, BoxFit.contain, 'tr')),
          title: const Text("Türkçe"),
          onTap: () {
            showToastMessage("success", "Success", "Success snackbar widget");
            //Get.back();
          },
          trailing: Icon(Icons.arrow_right),
        ),
        const SizedBox(height: 8),
        ListTile(
          leading: SizedBox(
              width: 36,
              child: cachedNetworkImage(enImage, BoxFit.contain, 'en')),
          title: const Text("English"),
          onTap: () {
            showToastMessage("error", "Success", "Error snackbar widget");
            //Get.back();
          },
          trailing: const Icon(Icons.arrow_right),
        ),
        const SizedBox(height: 8),
        ListTile(
          leading: Container(
              width: 36,
              child: cachedNetworkImage(ruImage, BoxFit.contain, 'ru')),
          title: const Text("Русский"),
          onTap: () {
            Get.back();
          },
          trailing: const Icon(Icons.arrow_right),
        ),
        const SizedBox(height: 8),
        ListTile(
          leading: SizedBox(
              width: 36,
              child: cachedNetworkImage(deImage, BoxFit.contain, 'de')),
          title: const Text("Deutsch"),
          onTap: () {
            Get.back();
          },
          trailing: const Icon(Icons.arrow_right),
        ),
        const SizedBox(height: 50),
      ],
    ),
  ));
}
