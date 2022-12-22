import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agency/widgets/networkimage_widget.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../utils/configuration.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int id = int.parse(Get.parameters['id']!);
    Map<dynamic, dynamic> data = Get.arguments.firstWhere((e) => e['id'] == id);
    return _build(context: context, product: data);
  }

  Widget _build({
    required BuildContext context,
    required Map<dynamic, dynamic> product,
  }) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 768),
          child: CustomScrollView(slivers: [
            SliverAppBar(
              leading: Container(
                  margin: EdgeInsets.only(
                    left: 8,
                    top: 8,
                  ),
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.back();
                    },
                    color: Colors.black87,
                  )),
              expandedHeight: MediaQuery.of(context).size.height * 0.6,
              elevation: 0,
              snap: true,
              floating: true,
              stretch: true,
              backgroundColor: Colors.grey.shade50,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground,
                ],
                background: cachedNetworkImage(
                    product["image"], BoxFit.cover, 'detail_view'),
                // background: Image.network(product.image, fit: BoxFit.cover,)
              ),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(45),
                  child: Transform.translate(
                    offset: Offset(0, 1),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                          child: Container(
                        width: 50,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                    ),
                  )),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product["text"],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(product["price"].toString() + '.00',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              height: 60,
                              child: Row(
                                children: [
                                  ZoomTapAnimation(
                                      child: Icon(Icons.menu_book,
                                          size: 50, color: kPrimaryColor)),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        product["description"],
                        style: TextStyle(
                          height: 1.5,
                          color: Colors.grey.shade800,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Subtext1',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 18),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        height: 50,
                        elevation: 0,
                        splashColor: Colors.yellow[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: kPrimaryColor,
                        child: Center(
                          child: Text(
                            product["btnText"],
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ))
            ])),
          ]),
        ),
      ),
    );
  }
}
