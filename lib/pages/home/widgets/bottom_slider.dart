import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agency/widgets/networkimage_widget.dart';

import '../../../theme/Themes.dart';

final List<Map<dynamic, dynamic>> randomImages = [
  {
    "id": 1,
    "text": "Fitness",
    "image":
        "https://img.freepik.com/free-photo/gym-with-indoor-cycling-equipment_23-2149270210.jpg",
    "route": "",
    "price": "",
    "btnText": "Reservation",
    'description': 'Kişiye Özel Antrenör %30 İndirim',
  },
  {
    "id": 2,
    "image":
        "https://img.freepik.com/free-photo/beauty-spa_144627-46202.jpg?t=st=1665745030~exp=1665745630~hmac=11ab39cf182b45eb73feda8dacc9a004258eeb80f5e5777f7999b9b478b232fd",
    "text": "Spa",
    "route": "",
    "price": "",
    "btnText": "Reservation",
    'description': 'ALIVA SPA\'da %30 İndirim',
  },
  {
    "id": 3,
    "image":
        "https://img.freepik.com/free-photo/young-mother-with-her-little-daughter-beach-by-ocean_1303-15521.jpg",
    "text": "Kids",
    "route": "",
    "btnText": "Reservation",
    "price": "",
    'description':
        'Çocuklar için ÜCRETSİZ konaklama (0-11.99 yaş arası belirli oda tiplerinde',
  },
  {
    "id": 4,
    "image":
        "https://img.freepik.com/free-photo/diner-platter-with-olives-cheese-vegetables_2829-11264.jpg",
    "text": "Breakfast",
    "route": "",
    "btnText": "Reservation",
    "price": "",
    'description': 'ÜCRETSİZ Pazar günleri Odaya Kahvaltı',
  },
  {
    "id": 5,
    "image":
        "https://img.freepik.com/free-photo/businesswoman-getting-taxi-cab_23-2149236688.jpg?w=1380&t=st=1666256613~exp=1666257213~hmac=3c473945bce10ef1e96a74aa49b63e48879b51fd881bd46cde3fc0d7bd546262",
    "text": "Transfer",
    "route": "",
    "btnText": "Reservation",
    "price": "",
    'description':
        'ÜCRETSİZ Havalimanı-Otel Gidiş-Dönüş Transferi (Müsaitlik Doğrultusunda)',
  },
  {
    "id": 6,
    "image":
        "https://kemer-antalya.com/tr//wp-content/uploads/2019/12/olympos-teleferik.jpg",
    "text": "Teleferik",
    "route": "",
    "btnText": "Reservation",
    "price": "",
    'description':
        'ÜCRETSİZ Olympos Teleferik Tahtalı Dağı (En az 10 kişi için geçerlidir. Konaklama süresince bir kez kullanılır',
  },
];

class BottomSlider extends StatelessWidget {
  BottomSlider({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        itemCount: randomImages.length,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 1.2,
            child: GestureDetector(
                onTap: () {
                  Get.toNamed('/detail/${randomImages[index]["id"]}',
                      arguments: randomImages);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        child: cachedNetworkImage(
                          randomImages[index]["image"],
                          BoxFit.cover,
                          'slider',
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500.withOpacity(0.7),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            randomImages[index]["description"],
                            textAlign: TextAlign.right,
                            style: lightTheme.textTheme.subtitle1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
