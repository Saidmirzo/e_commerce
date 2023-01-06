import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_decorations.dart';
import '../../config/constants/app_text_styles.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({
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
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: TextButton(
        onPressed: () {
          onTap();
        },
        style: AppDecorations.buttonStyle(
          borderRadius: 37.r,
          bgColor: isActive ? AppColors.accentColor : Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: 28.w,
            vertical: 11.h,
          ),
          border: BorderSide(
            color: AppColors.baseLight.shade100.withOpacity(.3),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.body13w7.copyWith(
              color: isActive
                  ? AppColors.textColor1
                  : AppColors.baseLight.shade100),
        ),
      ),
    );
  }
}