import 'dart:ui';

import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/main/components/text_button_gradient.dart';

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
