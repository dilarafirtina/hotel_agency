import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:agency/constants.dart';
import 'package:agency/widgets/form_master_widget.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'package:agency/widgets/widgets.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return formMaster(
        title: "Change Password",
        key: formKey,
        onTap: () => {},
        children: <Widget>[
          formLabel('Current Password'),
          formInput("REMARKS"),
          formLabel('New Password'),
          formInput("REMARKS"),
          formLabel('Confirm New Password'),
          formInput("REMARKS"),
        ]);
  }
}
