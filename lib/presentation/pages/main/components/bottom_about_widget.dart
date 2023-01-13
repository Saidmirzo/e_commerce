import 'dart:ui';
import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/pages/main/components/bottom_sheet_components/details_bottomsheet.dart';
import 'package:e_commerce/presentation/pages/main/components/masked_image.dart';
import 'package:e_commerce/presentation/pages/main/components/text_button_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottom_sheet_components/add_to_cart_bottom_sheet.dart';

class BottomAbout extends StatelessWidget {
  const BottomAbout({
    Key? key,
    required this.funcMoreButton,
    required this.isMore,
  }) : super(key: key);
  final Function funcMoreButton;
  final bool isMore;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 400.h,
        padding: EdgeInsets.only(bottom: 90.h, left: 20.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [.3, 1],
            colors: [
              AppColors.black.withOpacity(.95),
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
                      style: AppTextStyles.body25w4.copyWith(
                          fontFamily: AppTextStyles.fontFamilyGrafita),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.cricle),
                        Text(
                          '8.8 • ',
                          style: AppTextStyles.body25w4,
                        ),
                        MaskedImage(
                          image: AssetImage(
                            Assets.images.textBg,
                          ),
                          child: Text(
                            r'$200',
                            style: AppTextStyles.body25w4,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Visibility(
                  visible: !isMore,
                  child: Container(
                    height: 73.h,
                    width: 80.w,
                    padding: EdgeInsets.only(
                      top: 45.h,
                      bottom: 3.h,
                      left: 20.w,
                      right: 20.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                      ),
                      image: DecorationImage(
                        image: AssetImage(Assets.images.person2),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7.r),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: InkWell(
                          onTap: () {
                            funcMoreButton();
                          },
                          child: Container(
                            height: 25.h,
                            width: 52.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              color:
                                  AppColors.baseLight.shade100.withOpacity(.2),
                            ),
                            child: Text(
                              'More',
                              style: AppTextStyles.body10w5,
                            ),
                          ),
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
                  onTap: () => showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => const DetailsBottomSheet(),
                  ),
                  size: Size(170.w, 38.h),
                  borderRaius: 9.r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Product Details', style: AppTextStyles.body14w7),
                      SizedBox(width: 6.7.w),
                      SvgPicture.asset(
                        Assets.icons.arrowTop,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    showBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => const AddToCartBottomSheet(),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -3),
                        child: Container(
                          height: 53.h,
                          width: 161.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.buttonColor.withOpacity(.3),
                                blurRadius: 10,
                              )
                            ],
                          ),
                          child: const SizedBox.shrink(),
                        ),
                      ),
                      Container(
                        height: 38.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.r),
                          color: AppColors.buttonColor,
                          // boxShadow: const [
                          //   BoxShadow(
                          //     blurRadius: 20,
                          //     color: AppColors.buttonColor,
                          //   )
                          // ],
                        ),
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
                      ),
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
