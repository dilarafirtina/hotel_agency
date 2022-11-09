import 'package:agency/constants.dart';
import 'package:agency/pages/home/widgets/icon_links.dart';
import 'package:agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget InfoBox(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(defaultPadding),
    width: double.infinity,
    decoration: const BoxDecoration(color: Colors.white),
    padding: const EdgeInsets.all(defaultPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Değerli Partnerimiz",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w600, color: darkGrey),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const Text(
          "Satış Acentalarımız özel olarak hazırlanan BG Bonus Sistemine hoşgeldiniz.",
          style: TextStyle(color: darkGrey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const Text(
          "NG Phaselis Bay için yapacağınız rezervasyonlardan PUAN KAZANACAK ve kaxandığınız puanlara özel indirimler, ÜCRETSİZ KONAKLAMA hakkında faydalanabileceksiniz.",
          style: TextStyle(color: darkGrey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const Text(
          "Detaylı bilgi için aşağıdaki linkleri inceleyebilir ve her türlü sorunuz için bizlere bonus@nghotels.com.tr adresinden ulaşabilirsiniz.",
          style: TextStyle(color: darkGrey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconLink(Icons.bed, "google.com", "Odalar"),
            iconLink(Icons.tour, "google.com", "Sanal Tur"),
            iconLink(Icons.book, "google.com", "E-Katalog")
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconLink(Icons.file_present, "google.com", "Web Stock"),
            iconLink(
                Icons.library_books, "google.com", "NG Bonus System Manuel")
          ],
        )
      ],
    ),
  );
}
