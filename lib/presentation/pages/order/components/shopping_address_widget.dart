import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class ShoppingAddressWidget extends StatelessWidget {
  const ShoppingAddressWidget({
    super.key,
    required this.name,
    required this.id,
    required this.address, this.margin,
  });
  final String name;
  final String id;
  final String address;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144.h,
      margin:margin?? EdgeInsets.only(top: 20.h, bottom: 35.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.r),
        color: AppColors.textFieldBgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Shopping Adress', style: AppTextStyles.body13w6),
          Row(
            children: [
              Text(
                name,
                style: AppTextStyles.body17w8,
              ),
              SizedBox(width: 14.w),
              Text(
                id,
                style: AppTextStyles.body12w6.copyWith(
                  color: AppColors.accentColor.withOpacity(.3),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                address,
                style: AppTextStyles.body13w6.copyWith(
                  color: AppColors.textColor3,
                ),
              ),
              Text('Change', style: AppTextStyles.body13w6)
            ],
          )
        ],
      ),
    );
  }
}