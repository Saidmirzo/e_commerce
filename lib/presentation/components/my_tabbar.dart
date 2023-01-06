import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

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
              child: Text("Reviews"),
            ),
          ],
        ),
      ),
    );
  }
}
