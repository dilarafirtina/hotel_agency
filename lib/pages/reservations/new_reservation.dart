import 'package:agency/pages/reservations/reservation_controller.dart';
import 'package:agency/pages/reservations/widgets/personSelection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:agency/widgets/form_master_widget.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:get/get.dart';

class NewReservationView extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  NewReservationView({Key? key}) : super(key: key);

  final ReservationController _controller = Get.put(ReservationController());

  String agency = "ETS";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Obx(() => formMaster(
          context: context,
          title: "Yeni Rezervasyon Kayıt",
          formData: {},
          key: formKey,
          onTap: () => {}, //_controller.handleSave(formKey),
          child: <Widget>[
            formLabel('Acenta'),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                agency,
                textAlign: TextAlign.start,
              ),
            ),
            formLabel('Misafir Ad'),
            formInput("NAME"),
            formLabel('Misafir Soyad'),
            formInput("SURNAME"),
            formLabel('Misafir Milliyeti'),
            formDropdown('NATIONALITY', []),
            formLabel('Operatör'),
            formDropdown('OPERATOR', []),
            formLabel('Otel Voucher No'),
            formInput("VOUCHER"),
            formLabel('Otel'),
            formDropdown('HOTEL', []),
            formLabel('Oda Tipi'),
            formDropdown('ROOM', []),
            width > 640 ? personNumbersDesktop() : personNumbersMobile(),
            formLabel('Otel Voucher Tarihi'),
            formDatePicker("TDATE", InputType.date, formKey),
            formLabel('Giriş Tarihi'),
            formDatePicker("TDATE", InputType.date, formKey),
            formLabel('Çıkış Tarihi'),
            formDatePicker("TDATE", InputType.date, formKey),
          ],
        ));
  }
}
