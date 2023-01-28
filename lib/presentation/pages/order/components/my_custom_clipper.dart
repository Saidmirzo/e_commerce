import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomClipper extends CustomClipper<Path> {
  double r = 8.r;
  double point1 = 100.w;
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(point1 - r, 0)
      ..quadraticBezierTo(point1, 0, point1 + r / 2, r / 2)
      ..lineTo(115.w - r / 2, 19.h - r / 2)
      ..quadraticBezierTo(115.w, 19.h, 115.w - r / 2, 19.h + r / 2)
      ..lineTo(100.w + r / 2, 38.h - r / 2)
      ..quadraticBezierTo(100.w, 38.h, 100.w - r / 2, 38.h)
      ..lineTo(0, 38.h)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}