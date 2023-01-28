import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    Key? key,
    required this.text,
    required this.child, this.padding,
  }) : super(key: key);
  final String text;
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:padding?? EdgeInsets.symmetric(vertical: 34.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyles.body13w7.copyWith(
              color: AppColors.textColor3,
            ),
          ),
          child
        ],
      ),
    );
  }
}
