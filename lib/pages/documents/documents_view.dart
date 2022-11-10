import 'package:agency/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocumentsView extends StatelessWidget {
  DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt pageIndex = 0.obs;

    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 768),
          child: Column(
            children: [
              customHeader("Dökümanlarım", context),
            ],
          ),
        ),
      ),
    );
  }
}
