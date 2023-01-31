import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class OrderDateWidget extends StatelessWidget {
  const OrderDateWidget({
    super.key,
    required this.title,
    this.child,
  });
  final String title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 20.w, top: 14.h, bottom: 16.h),
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
        color: AppColors.textFieldBgColor,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.body12w6.copyWith(color: AppColors.textColor2),
          ),
          SizedBox(height: 8.h),
          child ??
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.calendar),
                  SizedBox(width: 8.w),
                  Text(
                    'Sat, November 24',
                    style: AppTextStyles.body15w7,
                  ),
                ],
              )
        ],
      ),
    );
  }
}