import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_decorations.dart';
import '../../config/constants/app_text_styles.dart';

class CustomTextConfirmButton extends StatelessWidget {
  const CustomTextConfirmButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      style: AppDecorations.buttonStyle(
        bgColor: AppColors.buttonColor,
        borderRadius: 9.r,
        size: Size(double.maxFinite, 56.h),
      ),
      child: Text(
        text,
        style: AppTextStyles.body13w7.copyWith(color: AppColors.black),
      ),
    );
  }
}