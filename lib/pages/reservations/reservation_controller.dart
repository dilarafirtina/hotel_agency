import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ReservationController extends GetxController {
  RxBool isCash = false.obs;
  RxBool isChild = false.obs;
  RxBool isBaby = false.obs;

  void onBabyValueChanged(int? newValue) async {
    if (newValue! > 0)
      isBaby.value = true;
    else if (newValue == 0) isBaby.value = false;
  }

  void onChildValueChanged(int? newValue) async {
    if (newValue! > 0)
      isChild.value = true;
    else if (newValue == 0) isChild.value = false;
  }

  void onBonusValueChanged(int? newValue) async {
    if (newValue == 0)
      isCash.value = false;
    else
      isCash.value = true;
  }

  void handleSave(GlobalKey<FormBuilderState> formKey) async {}
}
