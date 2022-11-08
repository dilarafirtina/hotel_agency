import 'package:agency/constants.dart';
import 'package:agency/widgets/default_button.dart';
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
          height: defaultPadding,
        ),
        Container(
          padding: const EdgeInsets.all(defaultPadding / 2),
          decoration:
              BoxDecoration(border: Border.all(color: darkGey, width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(color: darkGey, width: 1),
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Konaklama \nSayısı",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: darkGey),
                        ),
                        const SizedBox(
                          height: defaultPadding / 2,
                        ),
                        Text(
                          "6",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w600, color: darkGey),
                        ),
                      ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(color: darkGey, width: 1),
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Toplam \nGeceleme",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: darkGey),
                        ),
                        const SizedBox(
                          height: defaultPadding / 2,
                        ),
                        Text(
                          "134",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w600, color: darkGey),
                        ),
                      ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Bonus",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: darkGey),
                        ),
                        const Text(""),
                        const SizedBox(
                          height: defaultPadding / 2,
                        ),
                        Text(
                          "1357",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w600, color: darkGey),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Text(
          "Rezervasyonlarınızı Voucher Tarihinden itibaren 72 saat içerisinde sisteme eklemeniz gerekmektedir.",
          style: TextStyle(color: darkGey),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        defaultButton(text: "YENİ REZERVASYON")
      ],
    ),
  );
}
