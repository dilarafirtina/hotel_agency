import 'package:agency/pages/home/widgets/body.dart';
import 'package:agency/pages/home/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: defaultDrawer(),
      body: Align(
          alignment: Alignment.topCenter,
          child: Container(
              constraints: const BoxConstraints(maxWidth: 768),
              child: HomeBody())),
    );
  }
}
