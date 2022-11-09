import 'package:agency/constants.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';

Widget homeHeader(BuildContext context) {
  return Container(
    decoration: BoxDecoration(color: Colors.white),
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            hoverColor: Colors.transparent,
            icon: const Icon(Icons.menu),
            iconSize: 30,
            onPressed: () => Scaffold.of(context).openDrawer()),
        Container(
          width: 250,
          height: 70,
          margin: const EdgeInsets.only(top: 8.0),
          padding: const EdgeInsets.all(8.0),
          child: cachedNetworkImage(logoImage, BoxFit.contain, 'home_header'),
        ),
      ],
    ),
  );
}
