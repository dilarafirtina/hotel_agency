import 'package:agency/constants.dart';
import 'package:flutter/material.dart';

Widget dashboard(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(defaultPadding),
    width: double.infinity,
    decoration: const BoxDecoration(color: Colors.white),
    padding: const EdgeInsets.all(defaultPadding),
    child: Column(
      children: [
        Text(
          "DASHBOARD",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w600, color: darkGey),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Merhaba",
                  style: TextStyle(color: darkGey),
                ),
                Text(
                  "EMRE ÇİVİTCİ",
                  style: TextStyle(color: darkGey, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Satış Temsilcisi",
                  style: TextStyle(color: darkGey),
                ),
              ],
            ),
            const Text(
              "ACENTA İSMİ",
              style: TextStyle(color: darkGey, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Row(
          children: [
            Container(
              child: Column(children: [
                Text(
                  "Konaklama Sayısı",
                  style: TextStyle(color: darkGey),
                ),
                Text(
                  "6",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(fontWeight: FontWeight.w600, color: darkGey),
                ),
              ]),
            )
          ],
        ),
        const Text(
          "Rezervasyonlarınızı Voucher Tarihinden itibaren 72 saat içerisinde sisteme eklemeniz gerekmektedir.",
          style: TextStyle(color: darkGey),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    ),
  );
}
