import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/pages/delivery/components/custom_delivery_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingBagPage extends StatelessWidget {
  const ShoppingBagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: CustomDeliveryAppBar(name: 'Shopping bag', onBack: () {}),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.h),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.baseLight.shade20,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                children: [
                  Container(
                    height: 140.h,
                    width: 128.w,
                    decoration: BoxDecoration(
                      color: AppColors.accentColor,
                      image: DecorationImage(
                        image: AssetImage(Assets.images.winterJacket),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 209.w,
                        child: Text(
                          'Winter Jacket Half Zip R...',
                          style: AppTextStyles.body14w4,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
