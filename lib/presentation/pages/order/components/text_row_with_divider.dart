import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class TextRowWithDivider extends StatelessWidget {
  const TextRowWithDivider({
    Key? key,
    required this.name,
    this.text,
  }) : super(key: key);
  final String name;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                name,
                style: AppTextStyles.body13w7
                    .copyWith(color: AppColors.textColor3),
              ),
              const Spacer(),
              Text(
                text ?? '',
                style: AppTextStyles.body13w7.copyWith(
                  color: AppColors.textColor3,
                ),
              ),
              SizedBox(width: 10.w),
              SvgPicture.asset(Assets.icons.arrowRight),
            ],
          ),
          SizedBox(height: 24.h),
          Divider(
            color: AppColors.dividerColor2,
            thickness: 1,
            height: 1,
          ),
        ],
      ),
    );
  }
}