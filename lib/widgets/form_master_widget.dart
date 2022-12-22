import 'package:agency/widgets/background_wrapper.dart';
import 'package:agency/widgets/custom_header.dart';
import 'package:agency/widgets/master_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:agency/widgets/form_widgets.dart';

import '../utils/configuration.dart';
import 'widgets.dart';

Widget formMaster(
    {BuildContext? context,
    required String title,
    required GlobalKey<FormBuilderState> key,
    Map<String, dynamic>? formData,
    required Function()? onTap,
    required List<Widget> child}) {
  return masterPage(Column(children: [
    customHeader(""),
    Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        FormBuilder(
          key: key,
          child: Column(children: child),
        ),
        formSaveButton(onTap)
      ]),
    )
  ]));
}
