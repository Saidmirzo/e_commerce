import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({
    Key? key, required this.funcSeeResults, required this.funcClear,
  }) : super(key: key);
  final Function funcSeeResults;
  final Function funcClear;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18.5, sigmaY: 18.5),
          child: Container(
            height: 130.h,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () => funcClear(),
                      child: Container(
                        height: 44.h,
                        width: 160.w,
                        margin: EdgeInsets.symmetric(vertical: 4.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:
                                  AppColors.accentColor.withOpacity(.3),
                              width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100.r),
                          ),
                        ),
                        child: Text(
                          'CLEAR ALL4',
                          style: AppTextStyles.body15w7,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 13.w,
                      top: 0,
                      child: Container(
                        height: 10.h,
                        width: 10.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.badgeColor,
                        ),
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () => funcSeeResults(),
                  child: Container(
                    height: 45.h,
                    width: 160.w,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadiusDirectional.circular(25.r),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.accentColor,
                          AppColors.accentColor.withOpacity(0),
                        ],
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Text(
                        'See results',
                        style: AppTextStyles.body15w7
                            .copyWith(color: AppColors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}