import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class AmountColumnWidget extends StatelessWidget {
  const AmountColumnWidget({
    Key? key,
    required this.title,
    required this.text1,
    this.text2,
  }) : super(key: key);
  final String title;
  final String text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.body13w7.copyWith(color: AppColors.textColor3),
        ),
        SizedBox(height: 10.h),
        RichText(
          text: TextSpan(
            text: text1,
            style: AppTextStyles.body18w8,
            children: [
              TextSpan(
                text: text2,
                style: AppTextStyles.body18w8
                    .copyWith(color: AppColors.baseLight.shade40),
              )
            ],
          ),
        )
      ],
    );
  }
}
