import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';
import '../../main/components/bottom_sheet_components/circle_button.dart';

class OrderInformationWidget extends StatelessWidget {
  const OrderInformationWidget({
    Key? key, required this.picture, required this.name, required this.size, required this.color, required this.count, required this.cost,
  }) : super(key: key);
  final String picture;
  final String name;
  final String size;
  final Color color;
  final int count;
  final double cost;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 97.h,
          width: 100.w,
          margin: EdgeInsets.only(right: 22.w),
          decoration: BoxDecoration(
            color: AppColors.accentColor.withOpacity(.05),
            borderRadius: BorderRadius.circular(11.r),
          ),
          child: Image.asset(picture),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AppTextStyles.body16w8),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, bottom: 17.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Size $size Color',
                          style: AppTextStyles.body12w6.copyWith(
                            color: AppColors.accentColor.withOpacity(.5),
                          ),
                        ),
                        Container(
                          height: 13.h,
                          width: 13.h,
                          margin: EdgeInsets.only(left: 10.w),
                          child: CircleButton(
                            isActive: true,
                            color:color,
                            onTap: () {},
                            padding: EdgeInsets.all(3.h),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    '$count item',
                    style: AppTextStyles.body12w6.copyWith(
                      color: AppColors.textColor3,
                    ),
                  ),
                ],
              ),
              Text(
                '\$$cost',
                style: AppTextStyles.body14w8,
              )
            ],
          ),
        ),
      ],
    );
  }
}
