import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';

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
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 28.h,
        width: 28.h,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isActive
              ? Border.all(
                  color: AppColors.accentColor,
                  width: 1,
                )
              : null,
        ),
        child: Container(
          height: 26.h,
          width: 26.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
