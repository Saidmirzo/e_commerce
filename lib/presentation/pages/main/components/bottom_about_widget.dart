import 'dart:ui';
import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/pages/main/components/text_button_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomAbout extends StatelessWidget {
  const BottomAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 480.h,
        padding: EdgeInsets.only(bottom: 90.h, left: 20.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [.2, 1],
            colors: [
              AppColors.black.withOpacity(.9),
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                TextButtonGradient(text: '#boho gal', onTap: () {}),
                TextButtonGradient(text: '#beach wibes', onTap: () {}),
                TextButtonGradient(text: '#denim', onTap: () {}),
                Container(
                  height: 25.h,
                  width: 25.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: AppColors.borderColor2),
                  ),
                  child: Text(
                    '+5',
                    style: AppTextStyles.body10w4,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pink Heat Green coat',
                      style: AppTextStyles.body25w4,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.cricle),
                        Text(
                          '8.8 • ',
                          style: AppTextStyles.body25w4,
                        ),
                        // MaskedImage(
                        //   image: AssetImage(
                        //     Assets.images.textBg,
                        //   ),
                        //   child: Text(
                        //     r'$200',
                        //     style: AppTextStyles.body25w4,
                        //   ),
                        // ),
                        Text(
                          r'$200',
                          style: AppTextStyles.body25w4,
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 73.h,
                  width: 80.w,
                  padding: EdgeInsets.only(
                    top: 45.h,
                    bottom: 3.h,
                    left: 20.w,
                    right: 20.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: AssetImage(Assets.images.person1),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7.r),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Container(
                        height: 25.h,
                        width: 52.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          color: AppColors.baseLight.shade100.withOpacity(.2),
                        ),
                        child: Text(
                          'More',
                          style: AppTextStyles.body10w5,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                TextButtonGradient(
                  onTap: () {},
                  size: Size(170.w, 38.h),
                  borderRaius: 9.r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Product Details', style: AppTextStyles.body14w7),
                      Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: AppColors.baseLight.shade100,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 38.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.r),
                      color: AppColors.buttonColor,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20,
                          color: AppColors.buttonColor,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'To cart',
                        style: AppTextStyles.body14w7
                            .copyWith(color: AppColors.black),
                      ),
                      SizedBox(width: 5.w),
                      SvgPicture.asset(Assets.icons.shoppingBag),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
