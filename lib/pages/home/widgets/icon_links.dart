import 'package:agency/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget iconLink(IconData icon, String link, String text) {
  final Uri _url = Uri.parse(link);
  return InkWell(
      onTap: () => {launchUrl(_url)},
      child: Row(
        children: [
          Icon(
            icon,
            color: darkGrey,
            size: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(color: darkGrey),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ));
}
