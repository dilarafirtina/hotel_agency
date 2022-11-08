import 'package:agency/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:agency/widgets/round_backgroud_button.dart';

Widget formMaster(
    {required String title,
    required GlobalKey<FormBuilderState> key,
    Map<String, dynamic>? formData,
    required Function()? onTap,
    required List<Widget> children}) {
  return Scaffold(
    body: Container(
      width: double.infinity,
      decoration: BoxDecoration(color: darkGrey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              backGoundRoundButton(
                top: 5,
                left: 5,
                bottom: 5,
                right: 0,
              ),
              Container(
                width: 320,
                padding: EdgeInsets.all(5),
                child: Text(
                  title.tr,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Color.fromRGBO(225, 95, 27, .3),
                          //       blurRadius: 60,
                          //       offset: Offset(0, 10))
                          // ]
                        ),
                        child: Column(
                          children: [
                            FormBuilder(
                              key: key,
                              child: Column(children: children),
                            ),
                            formSaveButton(onTap)
                          ],
                        ),
                      ),
                    )),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
