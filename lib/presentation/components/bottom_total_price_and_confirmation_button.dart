import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import 'custom_text_confirm_button.dart';

class BottomTotalPriceAndConfirmationButton extends StatelessWidget {
  const BottomTotalPriceAndConfirmationButton({
    super.key, required this.price, required this.payTypeIcon, required this.buttonText, required this.onConfirm,
  });
final double price;
final String payTypeIcon;
final String buttonText;
final Function() onConfirm;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColors.dividerColor2,
          thickness: 1,
        ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 18.h, bottom: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To Pay',
                      style: AppTextStyles.body13w7.copyWith(
                        color: AppColors.textColor3,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text('\$$price',
                        style: AppTextStyles.body18w8),
                  ],
                ),
                SvgPicture.asset(payTypeIcon),
              ],
            ),
          ),
          CustomTextConfirmButton(
            text: buttonText,
            onTap: () =>onConfirm(),
          )
        ],
      ),
    )
      ],
    );
  }
}