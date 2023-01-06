import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_decorations.dart';
import '../../config/constants/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.padding,
  }) : super(key: key);
  final String text;
  final Function onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        onTap();
      },
      style: AppDecorations.buttonStyle(
        borderRadius: 50,
        bgColor: Colors.transparent,
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 31.w,
              vertical: 10.h,
            ),
        border: const BorderSide(
          color: AppColors.accentColor,
          width: .7,
        ),
      ),
      icon: Text(
        text,
        style: AppTextStyles.body14w4,
      ),
      label: const Icon(
        Icons.keyboard_arrow_down,
        color: AppColors.accentColor,
      ),
    );
  }
}
