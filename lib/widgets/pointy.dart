import 'package:flutter/material.dart';

class PointClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(PointClipper oldClipper) => false;
}
