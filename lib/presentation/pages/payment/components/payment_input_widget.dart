import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class PaymentInputWidget extends StatelessWidget {
  const PaymentInputWidget({
    super.key,
    required this.title,
    required this.hintText,
    required this.formatter,
    required this.iconPath,
  });
  final String title;
  final String iconPath;
  final String hintText;
  final String formatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.body13w7.copyWith(color: AppColors.textColor3),
        ),
        Container(
          height: 54.h,
          margin: EdgeInsets.only(top: 12.h, bottom: 20.h),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            color: AppColors.textFieldBgColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: TextField(
            style: AppTextStyles.body13w7,
            inputFormatters: [
              MaskTextInputFormatter(
                mask: formatter,
                filter: {"#": RegExp(r'[0-9]')},
                type: MaskAutoCompletionType.lazy,
              )
            ],
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.body11w5.copyWith(
                color: AppColors.baseLight.shade20,
              ),
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(iconPath),
              ),
            ),
          ),
        )
      ],
    );
  }
}
