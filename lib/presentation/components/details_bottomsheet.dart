import 'dart:ui';
import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/presentation/components/product_details_tab.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/presentation/components/custom_text_button.dart';
import 'package:e_commerce/presentation/pages/main/components/widget_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_tabbar.dart';
import 'reviews_tab.dart';
import 'categories_button_widget.dart';
import 'details_shipping_widget.dart';
import 'details_size_and_fit.dart';

class DetailsBottomSheet extends StatefulWidget {
  const DetailsBottomSheet({super.key});

  @override
  State<DetailsBottomSheet> createState() => _DetailsBottomSheetState();
}

class _DetailsBottomSheetState extends State<DetailsBottomSheet> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 5, vsync: this);

  Map<String, String> productDetails = {
    "Color": "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
    "Type": "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
    "Neckline": "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
    "Features": "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 686.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        gradient: AppColors.gradients.detailsGradient,
      ),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            blendMode: BlendMode.dstIn,
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 49.w,
                  height: 3.h,
                  margin: EdgeInsets.only(top: 20.h),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.7),
                    borderRadius: BorderRadius.circular(47.r),
                  ),
                ),
              ),
              MyTabbar(tabController: tabController),
              Flexible(
                fit: FlexFit.tight,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ProductDetailsTab(productDetails: productDetails),
                    Container(),
                    Container(),
                    Container(),
                    const ReviewsTab(),
                    Container(
                      height: 35.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(vertical: 35.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...[
                              "#boho gal",
                              "#beach wibes",
                              "#denim"
                            ].map((text) => Container(
                                  width: 93.w,
                                  height: 30.h,
                                  margin: EdgeInsets.only(right: 4.5.w),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    color: AppColors.grey.withOpacity(.3),
                                  ),
                                  child: Text(
                                    text,
                                    style: AppTextStyles.body12w5.copyWith(
                                        color: AppColors.baseLight.shade100),
                                  ),
                                )),
                            Container(
                              height: 33.h,
                              width: 33.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.r),
                                border:
                                    Border.all(color: AppColors.borderColor2),
                              ),
                              child: Text(
                                '+5',
                                style: AppTextStyles.body10w4,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const DetailsShippingWidget(),
                    Container(),
                    const DetailsSizeAndFit(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}




