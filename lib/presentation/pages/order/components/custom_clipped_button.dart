
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import 'my_custom_clipper.dart';

class CustomClippedButton extends StatelessWidget {
  const CustomClippedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        height: 38.h,
        width: 115.w,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 17.w),
        margin: EdgeInsets.only(right: 10.w),
        decoration: BoxDecoration(
          color: AppColors.accentColor.withOpacity(.05),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(text, style: AppTextStyles.body14w6),
      ),
    );
  }
}