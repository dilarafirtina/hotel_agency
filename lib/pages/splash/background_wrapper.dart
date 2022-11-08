import 'package:agency/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';

class IntroLoginBackgroundWrapper extends StatelessWidget {
  const IntroLoginBackgroundWrapper({
    Key? key,
    required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: cachedNetworkImage(
            imageURL,
            BoxFit.cover,
            'c',
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12.withOpacity(0.1),
                  Colors.black12,
                  Colors.black54,
                  Colors.black54,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
