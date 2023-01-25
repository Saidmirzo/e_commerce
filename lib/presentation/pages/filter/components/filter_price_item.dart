import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class FilterPriceItem extends StatelessWidget {
  const FilterPriceItem({
    Key? key,
    this.showText,
  }) : super(key: key);
  final bool? showText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: showText ?? true,
          child: Padding(
            padding: EdgeInsets.only(top: 40.h, bottom: 32.h),
            child: Text('Price Range(USD)', style: AppTextStyles.body17w7),
          ),
        ),
        Column(
          children: [
            FlutterSlider(
              handlerHeight: 20.h,
              handlerWidth: 24.w,
              handler: FlutterSliderHandler(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(72.r),
                  color: AppColors.accentColor,
                ),
                child: Container(
                  height: 20.h,
                  width: 24.w,
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(Assets.icons.iconSlider),
                ),
              ),
              rightHandler: FlutterSliderHandler(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(72.r),
                  color: AppColors.accentColor,
                ),
                child: Container(
                  height: 20.h,
                  width: 24.w,
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(Assets.icons.iconSlider),
                ),
              ),
              values: const [30, 70],
              min: 0,
              max: 100,
              axis: Axis.horizontal,
              rangeSlider: true,
              trackBar: FlutterSliderTrackBar(
                inactiveTrackBarHeight: 1.5,
                activeTrackBar:
                    const BoxDecoration(color: AppColors.accentColor),
                inactiveTrackBar: BoxDecoration(
                  color: AppColors.accentColor.withOpacity(.2),
                ),
              ),
              handlerAnimation: const FlutterSliderHandlerAnimation(scale: 1),
              tooltip: FlutterSliderTooltip(disabled: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  r'$40',
                  style: AppTextStyles.body13w5,
                ),
                Text(
                  r'$100',
                  style: AppTextStyles.body13w5,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
