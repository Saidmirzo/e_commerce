import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class EstimatedTimeItem extends StatelessWidget {
  const EstimatedTimeItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subTitle,
    required this.isActive,
  });
  final String iconPath;
  final String title;
  final String subTitle;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    Color color = isActive
        ? AppColors.accentColor
        : AppColors.accentColor.withOpacity(.3);
    return Container(
      margin: EdgeInsets.only(bottom: 40.h),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 16.h,
                width: 16.h,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: color,
                    width: 1,
                  ),
                ),
                child: Container(
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.w, right: 18.w),
            child: SvgPicture.asset(
              iconPath,
              color: isActive
                  ? AppColors.accentColor.withOpacity(.5)
                  : AppColors.baseLight.shade20,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.body13w6
                    .copyWith(color: AppColors.textColor2),
              ),
              SizedBox(height: 6.h),
              Text(
                subTitle,
                style: AppTextStyles.body14w8,
              )
            ],
          )
        ],
      ),
    );
  }
}