import 'package:agency/constants.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:flutter/material.dart';

Widget personNumbersDesktop() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formLabel('Yetişkin Sayısı'),
            Container(
              width: 200,
              child: formDropdown('ADULT', []),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formLabel('Çocuk Sayısı'),
            Container(
              width: 200,
              child: formDropdown('CHILD', []),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formLabel('Bebek Sayısı'),
            Container(
              width: 200,
              child: formDropdown('BABY', []),
            )
          ],
        ),
      ],
    ),
  );
}

Widget personNumbersMobile() {
  return Column(children: [
    formLabel('Yetişkin Sayısı'),
    formDropdown('ADULT', []),
    formLabel('Çocuk Sayısı'),
    formDropdown('CHILD', []),
    formLabel('Bebek Sayısı'),
    formDropdown('BABY', []),
  ]);
}

Widget childAgesDesktop() {
  return
      // TODO : if number of child or baby > 0,
      Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 200,
        ),
        Column(
          children: [
            formLabel('Çocuk Yaşı'),
            //for number of child of baby
            Row(
              children: [
                formLabel('1.'),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: defaultPadding),
                      width: 200,
                      child: formDropdown('HOTEL', []),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                formLabel('2.'),
                Column(
                  children: [
                    Container(
                      width: 200,
                      child: formDropdown('HOTEL', []),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            formLabel('Bebek Yaşı'),
            //for number of child of baby
            Row(
              children: [
                formLabel('1.'),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: defaultPadding),
                      width: 200,
                      child: formDropdown('HOTEL', []),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                formLabel('2.'),
                Column(
                  children: [
                    Container(
                      width: 200,
                      child: formDropdown('HOTEL', []),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget childAgesMobile() {
  // TODO : if number of child or baby > 0,
  return Column(
    children: [
      formLabel('Çocuk Yaşı'),
      Row(
        children: [
          formLabel('1.'),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                width: 200,
                child: formDropdown('HOTEL', []),
              )
            ],
          )
        ],
      ),
      Row(
        children: [
          formLabel('2.'),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                width: 200,
                child: formDropdown('HOTEL', []),
              )
            ],
          )
        ],
      ),
      formLabel('Bebek Yaşı'),
      //for number of child of baby
      Row(
        children: [
          formLabel('1.'),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                width: 200,
                child: formDropdown('HOTEL', []),
              )
            ],
          )
        ],
      ),
      Row(
        children: [
          formLabel('2.'),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                width: 200,
                child: formDropdown('HOTEL', []),
              )
            ],
          )
        ],
      ),
    ],
  );
}
