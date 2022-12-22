import 'package:agency/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/master_page.dart';
import '../../widgets/widgets.dart';

class DocumentsView extends StatelessWidget {
  DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt pageIndex = 0.obs;

    return masterPage(
      Column(
        children: [
          customHeader("Dökümanlarım"),
        ],
      ),
    );
  }
}
