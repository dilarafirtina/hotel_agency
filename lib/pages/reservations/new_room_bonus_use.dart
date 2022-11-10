import 'package:agency/constants.dart';
import 'package:agency/model/lookup_item_model.dart';
import 'package:agency/pages/reservations/reservation_controller.dart';
import 'package:agency/pages/reservations/widgets/personSelection.dart';
import 'package:agency/widgets/photo_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:agency/widgets/form_master_widget.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:get/get.dart';

List<LookupItem> bonusUse = [
  LookupItem(0, "Room Reservation"),
  LookupItem(1, "Cash"),
];

class NewBonusUseView extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  NewBonusUseView({Key? key}) : super(key: key);
  final ReservationController _controller = Get.put(ReservationController());

  @override
  Widget build(BuildContext context) {
    String agency = "ETS";
    var width = MediaQuery.of(context).size.width;
    return Obx(() => formMaster(
        context: context,
        title: "Yeni Harcama Kayıt",
        formData: {},
        key: formKey,
        onTap: () => _controller.handleSave(formKey),
        child: <Widget>[
          formLabel('Otel'),
          formDropdown('HOTEL', []),
          formLabel('Ad'),
          formInput("NAME"),
          formLabel('Soyad'),
          formInput("SURNAME"),
          formLabel('Harcama Şekli'),
          formDropdown('USE_TYPE', bonusUse,
              onChanged: _controller.onBonusValueChanged),
          if (!_controller.isCash.value)
            width > 640 ? personNumbersDesktop() : personNumbersMobile(),
          if (!_controller.isCash.value)
            width > 640 ? childAgesDesktop() : childAgesMobile(),
          formLabel('Rezervasyon Tarihi'),
          formDatePicker("TDATE", InputType.date, formKey),
          if (!_controller.isCash.value) checkIncheckOut(),
          const SizedBox(height: defaultPadding * 2),
          _controller.isCash.value
              ? cashWidget()
              : const Text(
                  "Biriken bonuslarınızı sadece 30 Kasım - 1 Nisan tarihleri arasında NG Phaselis Bay otelinde müsaitlik doğrultusunda kullanabilirsiniz. Müsaitlk olmaması durumunda ekibimiz sizinle iletişime geçerek daha uygun bir tarih fırsatı sunacaktır."),
          const SizedBox(height: defaultPadding * 2),
        ]));
  }

  Widget cashWidget() {
    return Column(children: [
      const Text(
          "Nakit Harcamalarınızın talebini Acente üzerinde keseceğiniz fatura karşılığında alabilirsiniz. Lütfen talep ettiğiniz nakit bonusun fatura karşını yükleyiniz."),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 150,
            child: fileUploadButton("Fatura Yükle"),
          ),
        ],
      ),
      const SizedBox(height: defaultPadding * 2)
    ]);
  }

  Widget checkIncheckOut() {
    return Column(children: [
      formLabel('Giriş Tarihi'),
      formDatePicker("TDATE", InputType.date, formKey),
      formLabel('Çıkış Tarihi'),
      formDatePicker("TDATE", InputType.date, formKey),
    ]);
  }
}
