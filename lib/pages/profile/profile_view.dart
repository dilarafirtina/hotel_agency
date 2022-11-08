import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:agency/widgets/form_master_widget.dart';
import 'package:agency/widgets/form_widgets.dart';
import 'profile_controller.dart';

class ProfileView extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController _controller = Get.find();
    return formMaster(
        title: "Yeni Üye Kayıt Formu",
        formData: _controller.formData,
        key: formKey,
        onTap: () => _controller.handleSave(formKey),
        children: <Widget>[
          formLabel('Adı'),
          formInput("FIRSTNAME",
              initialValue: _controller.firstName.value, isRequired: true),
          formLabel('Soyadı'),
          formInput("LASTNAME",
              initialValue: _controller.lastName.value, isRequired: true),
          formLabel('Görevi'),
          formInput("TASK"),
          formLabel('Kişisel Mail Adresi'),
          formInput("EMAIL"), //initialValue: _controller.email.value
          formLabel('Şifre'),
          Obx(() => formPassword("PASSWORD", _controller.obscureText.value,
              onTap: () => _controller.obscureText.value =
                  !_controller.obscureText.value)),
          formLabel('Şifreyi Tekrarlayın'),
          Obx(() => formPassword(
              "VERIFYPASSWORD", _controller.obscureText1.value,
              onTap: () => _controller.obscureText1.value =
                  !_controller.obscureText1.value)),
          formLabel('Acenta Mail Adresi'),
          formInput("AGENCY_EMAIL", isRequired: true),
          formLabel('Acenta Adı'),
          formInput("AGENCY_NAME", isRequired: true),
          formLabel('Acenta ID'),
          formInput("AGENCY_ID", isRequired: true),
          formLabel('Acenta Adresi'),
          formInputArea("AGENCY_ADDRESS"),
          formLabel('Acenta Şehri'),
          formDropdown("AGENCY_CITY", []),
          formLabel('Acenta Ülkesi'),
          formDropdown("AGENCY_COUNTRY", []),
          formLabel('Acenta Telefonu' + ' *'),
          InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {
              //print(number.phoneNumber);
            },
            onInputValidated: (bool value) {
              //print(value);
            },
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.DIALOG,
              setSelectorButtonAsPrefixIcon: false,
            ),
            ignoreBlank: false,
            // inputDecoration: const InputDecoration(
            //   border: UnderlineInputBorder(
            //     borderSide: BorderSide(),
            //   ),
            // ),
            //inputBorder: InputBorder.none,
            autoValidateMode: AutovalidateMode.disabled,
            selectorTextStyle:
                const TextStyle(color: Colors.black, fontSize: 16),
            initialValue: PhoneNumber(
                isoCode: 'TR', phoneNumber: _controller.phone.value),
            //textFieldController: controller,
            formatInput: false,
            keyboardType: TextInputType.phone,
            //inputBorder: const OutlineInputBorder(),
            onSaved: (PhoneNumber number) {
              _controller.formData["PHONE"] = number.phoneNumber;
              //print('On Saved: $number');
            },
          ),
          formLabel('Acenta Sahibinin Adı'),
          formInput("AGENCY_OWNER", isRequired: true),
          //formInput("PHONE", initialValue: _controller.phone.value),

          //@GDPR BIT=null,
          //@EMAILSEND BIT=NULL,
        ]);
  }
}
