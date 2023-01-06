import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    required this.text,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final bool isActive;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onTap();
      },
      height: 31.h,
      minWidth: 67.w,
      color: isActive
          ? AppColors.buttonColor2
          : AppColors.accentColor.withOpacity(.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
        side: isActive
            ? const BorderSide(color: AppColors.borderColor3)
            : BorderSide.none,
      ),
      child: Text(
        text,
        style: AppTextStyles.body10w5,
      ),
    );
  }
}
