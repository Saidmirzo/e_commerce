import 'dart:ui';

import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBottomSheet extends StatefulWidget {
  const DetailsBottomSheet({super.key});

  @override
  State<DetailsBottomSheet> createState() => _DetailsBottomSheetState();
}

class _DetailsBottomSheetState extends State<DetailsBottomSheet> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 6, vsync: this);

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
                fit: FlexFit.loose,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Container(
                      height: 35.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(vertical: 35.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...["#boho gal", "#beach wibes", "#denim"].map((text) => Container(
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
                                    style: AppTextStyles.body12w5.copyWith(color: AppColors.baseLight.shade100),
                                  ),
                                )),
                            Container(
                              height: 33.h,
                              width: 33.h,
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
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
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

class MyTabbar extends StatelessWidget {
  const MyTabbar({
    Key? key,
    this.tabController,
    this.width,
  }) : super(key: key);

  final TabController? tabController;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      margin: EdgeInsets.only(bottom: 19.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2.h, color: AppColors.borderColor),
        ),
      ),
      child: Transform.translate(
        offset: Offset(0, 2.5.h),
        child: TabBar(
          indicatorColor: AppColors.indicatorColor,
          indicatorWeight: 3.h,
          isScrollable: true,
          controller: tabController,
          labelStyle: AppTextStyles.body15w7.copyWith(),
          unselectedLabelStyle: AppTextStyles.body15w7.copyWith(color: AppColors.baseLight.shade40),
          tabs: const [
            Tab(
              child: Text("Product details"),
            ),
            Tab(
              child: Text("Shipping"),
            ),
            Tab(
              child: Text("Return Policy"),
            ),
            Tab(
              child: Text("Size & Fit"),
            ),
            Tab(
              child: Text("Size & Fit"),
            ),
            Tab(
              child: Text("Reviews"),
            ),
          ],
        ),
      ),
    );
  }
}
