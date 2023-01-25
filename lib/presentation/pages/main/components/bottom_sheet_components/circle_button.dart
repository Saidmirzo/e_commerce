import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/app_colors.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.isActive,
    required this.color,
    required this.onTap,
  }) : super(key: key);
  final bool isActive;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 36.h,
        width: 36.h,
        padding: isActive ? EdgeInsets.all(10.h) : EdgeInsets.all(7.h),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isActive
              ? Border.all(
                  color: color,
                  width: 1,
                )
              : null,
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
