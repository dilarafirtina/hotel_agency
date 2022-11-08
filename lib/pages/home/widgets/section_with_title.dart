import 'package:agency/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget SectionTitle(String title, ThemeData theme, String path) {
  return Padding(
    padding:
        const EdgeInsets.only(left: 16.0, right: 0.0, bottom: defaultPadding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              theme.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w600),
        ),
        // MaterialButton(
        //   onPressed: () {
        //     Get.toNamed(path);
        //   },
        //   minWidth: 50,
        //   splashColor: theme.primaryColor.withAlpha(10),
        //   highlightColor: theme.primaryColor.withAlpha(30),
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        //   child: Icon(
        //     Icons.arrow_right,
        //     size: 24,
        //     color: theme.primaryColor,
        //   ),
        // )
      ],
    ),
  );
}
