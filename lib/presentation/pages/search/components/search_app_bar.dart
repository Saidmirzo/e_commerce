import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      color: AppColors.black,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Container(
            height: 48.h,
            width: 48.h,
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.accentColor.withOpacity(.1), width: 1),
              shape: BoxShape.circle,
              color: AppColors.searchColor,
            ),
            child: SvgPicture.asset(Assets.icons.arrowLeft),
          ),
          Container(
            height: 48.h,
            width: 286.w,
            margin: EdgeInsets.only(left: 16.w),
            padding: EdgeInsets.symmetric(vertical: 9.h),
            decoration: BoxDecoration(
              color: AppColors.searchColor,
              border: Border.all(color: AppColors.buttonColor, width: 1),
              borderRadius: BorderRadius.circular(64.r),
            ),
            child: TextField(
              style:
                  AppTextStyles.body14w5.copyWith(color: AppColors.buttonColor),
              decoration: InputDecoration(
                prefixIcon: SvgPicture.asset(
                  Assets.icons.search,
                  color: AppColors.accentColor.withOpacity(.2),
                ),
                border: InputBorder.none,
              ),
              cursorColor: AppColors.buttonColor,
            ),
          )
        ],
      ),
    );
  }
}
