import 'package:e_commerce/presentation/components/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';
import '../../../../../config/constants/assets.dart';

class DetailsShippingWidget extends StatelessWidget {
  const DetailsShippingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40.w, right: 27.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 26.h),
            child: CustomTextButton(text: 'Choose state', onTap: () {}),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.shipping),
                  SizedBox(width: 7.w),
                  Text(
                    'Shipping info',
                    style: AppTextStyles.body15w7,
                  ),
                ],
              ),
              SizedBox(
                width: 180.w,
                child: Text(
                  r'Free express shipping on orders over US$129.00 Estimated to be delivered on 19/08/2022 - 26/08/2022.',
                  style: AppTextStyles.body13w4.copyWith(
                    color: AppColors.textColor3,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
