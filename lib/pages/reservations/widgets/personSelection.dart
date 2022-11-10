import 'package:agency/constants.dart';
import 'package:agency/model/lookup_item_model.dart';
import 'package:agency/pages/reservations/reservation_controller.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final ReservationController _controller = Get.put(ReservationController());

List<LookupItem> numberofPeople = [
  LookupItem(0, "0"),
  LookupItem(1, "1"),
  LookupItem(2, "2"),
  LookupItem(3, "3"),
  LookupItem(4, "4"),
  LookupItem(5, "5"),
  LookupItem(6, "6"),
];

Widget personNumbersDesktop() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formLabel('Yetişkin Sayısı'),
            Container(width: 200, child: formDropdown('ADULT', numberofPeople))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formLabel('Çocuk Sayısı'),
            Container(
              width: 200,
              child: formDropdown('CHILD', numberofPeople,
                  onChanged: _controller.onPersonValueChanged),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formLabel('Bebek Sayısı'),
            Container(
              width: 200,
              child: formDropdown('BABY', numberofPeople,
                  onChanged: _controller.onPersonValueChanged),
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
    formDropdown(
      'ADULT',
      numberofPeople,
    ),
    formLabel('Çocuk Sayısı'),
    formDropdown('CHILD', numberofPeople,
        onChanged: _controller.onPersonValueChanged),
    formLabel('Bebek Sayısı'),
    formDropdown('BABY', numberofPeople,
        onChanged: _controller.onPersonValueChanged),
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
