import 'package:agency/constants.dart';
import 'package:agency/widgets/background_wrapper.dart';
import 'package:agency/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:agency/widgets/form_widgets.dart';

Widget formMaster(
    {BuildContext? context,
    required String title,
    required GlobalKey<FormBuilderState> key,
    Map<String, dynamic>? formData,
    required Function()? onTap,
    required List<Widget> child}) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 768),
        child: SafeArea(
          child: Column(children: [
            customHeader("", context!),
            Container(
              height: MediaQuery.of(context!).size.height - 70,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const IntroLoginBackgroundWrapper(
                      imageURL:
                          "https://images.trvl-media.com/lodging/66000000/65730000/65726800/65726788/fb7048a5.jpg"),
                  Container(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.white),
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding),
                        margin: const EdgeInsets.all(defaultPadding * 2),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            FormBuilder(
                              key: key,
                              child: Column(children: child),
                            ),
                            formSaveButton(onTap)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    ),
  );
}
