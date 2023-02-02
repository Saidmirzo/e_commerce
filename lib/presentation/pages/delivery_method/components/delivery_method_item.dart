import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../order_confirmation/components/payment_methot_item.dart';

class DeliveryMethodItem extends StatelessWidget {
  const DeliveryMethodItem({
    Key? key,
    required this.cost,
    required this.time,
    required this.iconPath,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);
  final double cost;
  final String time;
  final String iconPath;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 112.h,
        margin: EdgeInsets.only(top: 15.h),
        padding:
            EdgeInsets.only(top: 24.h, left: 20.w, right: 24.w, bottom: 25.h),
        decoration: BoxDecoration(
          color: !isActive ? AppColors.textFieldBgColor : null,
          borderRadius: BorderRadius.circular(11.r),
          border: isActive
              ? Border.all(color: AppColors.baseLight.shade20, width: 1)
              : null,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CiricleIsActiveWidget(isActive: isActive),
            SizedBox(width: 25.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Free  ',
                    style: AppTextStyles.body17w8,
                    children: [
                      TextSpan(
                        text: '+\$$cost',
                        style: AppTextStyles.body14w6
                            .copyWith(color: AppColors.buttonColor),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Will be delivered to the specified\naddress within $time working days',
                  style: AppTextStyles.body12w6.copyWith(
                    color: AppColors.textColor3,
                  ),
                )
              ],
            ),
            const Spacer(),
            Center(
              child: SvgPicture.asset(iconPath),
            )
          ],
        ),
      ),
    );
  }
}
