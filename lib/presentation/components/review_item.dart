import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 21.5.h,
              backgroundImage: AssetImage(Assets.images.user),
            ),
            SizedBox(width: 13.w),
            Text(
              "Black Dress",
              style: AppTextStyles.body15w4.copyWith(color: AppColors.baseLight.shade100),
            ),
            Container(
              height: 22.h,
              width: 22.h,
              margin: EdgeInsets.only(left: 14.w, right: 10.w),
              child: Stack(
                children: [
                  CircularProgressIndicator(value: .88, strokeWidth: 3.h),
                  Center(
                    child: Container(
                      width: 4.4.h,
                      height: 4.4.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.indicatorColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("8,8", style: AppTextStyles.body15w4),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                "See full review",
                style: AppTextStyles.body15w6.copyWith(color: AppColors.indicatorColor),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 230.w,
              child: Text(
                "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric...",
                style: AppTextStyles.body13w4.copyWith(color: AppColors.baseLight.shade50),
              ),
            ),
            SizedBox(
              width: 120.w,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => Container(
                      width: 46.w,
                      height: 32.h,
                      margin: EdgeInsets.only(right: 5.5.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        image: DecorationImage(
                          image: AssetImage(Assets.images.textBg),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
