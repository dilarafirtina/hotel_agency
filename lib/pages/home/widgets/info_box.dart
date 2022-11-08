import 'package:agency/constants.dart';
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
              ?.copyWith(fontWeight: FontWeight.w600, color: darkGey),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const Text(
          "Satış Acentalarımız özel olarak hazırlanan BG Bonus Sistemine hoşgeldiniz.",
          style: TextStyle(color: darkGey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const Text(
          "NG Phaselis Bay için yapacağınız rezervasyonlardan PUAN KAZANACAK ve kaxandığınız puanlara özel indirimler, ÜCRETSİZ KONAKLAMA hakkında faydalanabileceksiniz.",
          style: TextStyle(color: darkGey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const Text(
          "Detaylı bilgi için aşağıdaki linkleri inceleyebilir ve her türlü sorunuz için bizlere bonus@nghotels.com.tr adresinden ulaşabilirsiniz.",
          style: TextStyle(color: darkGey),
          textAlign: TextAlign.center,
        )
      ],
    ),
  );
}
