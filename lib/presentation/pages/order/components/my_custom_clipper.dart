import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomClipper extends CustomClipper<Path> {
  MyCustomClipper(this.width);
  final double width;
  double r = 8.r;
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(width-15.w - r, 0)
      ..quadraticBezierTo(width-15.w, 0, width-15.w + r / 2, r / 2)
      ..lineTo(width - r / 2, 19.h - r / 2)
      ..quadraticBezierTo(width, 19.h, width - r / 2, 19.h + r / 2)
      ..lineTo(width-15.w + r / 2, 38.h - r / 2)
      ..quadraticBezierTo(width-15.w, 38.h, width-15.w - r / 2, 38.h)
      ..lineTo(0, 38.h)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}