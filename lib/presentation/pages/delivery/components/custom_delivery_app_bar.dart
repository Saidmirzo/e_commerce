import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class CustomDeliveryAppBar extends StatelessWidget {
  const CustomDeliveryAppBar({
    Key? key,
    required this.name,
    required this.onBack,
  }) : super(key: key);
  final String name;
  final Function onBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      color: AppColors.black,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => onBack(context),
            child: Container(
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
          ),
          Text(name, style: AppTextStyles.body17w6),
          SizedBox(width: 48.w),
        ],
      ),
    );
  }
}
