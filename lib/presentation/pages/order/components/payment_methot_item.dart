import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class PaymentMethotItem extends StatelessWidget {
  const PaymentMethotItem({
    Key? key,
    required this.preFixIcon,
    required this.title,
    required this.suffixIcon,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);
  final String preFixIcon;
  final String title;
  final String suffixIcon;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 57.h,
        padding: EdgeInsets.only(left: 15.w, right: 23.w),
        margin: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          color: !isActive ? AppColors.textFieldBgColor : null,
          borderRadius: BorderRadius.circular(11.r),
          border: isActive
              ? Border.all(color: AppColors.baseLight.shade20, width: 1)
              : null,
        ),
        child: Row(
          children: [
            CiricleIsActiveWidget(isActive: isActive),
            SvgPicture.asset(preFixIcon),
            SizedBox(width: 10.w),
            Text(title, style: AppTextStyles.body14w6),
            const Spacer(),
            SvgPicture.asset(suffixIcon),
          ],
        ),
      ),
    );
  }
}

class CiricleIsActiveWidget extends StatelessWidget {
  const CiricleIsActiveWidget({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 21.h,
      width: 21.h,
      margin: EdgeInsets.only(right: 11.w),
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: AppColors.accentColor.withOpacity(.2), width: 1),
      ),
      child: Visibility(
        visible: isActive,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.buttonColor,
          ),
        ),
      ),
    );
  }
}
