import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/assets.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 48.h,
              color: AppColors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.icons.flash),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.icons.eye),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.icons.union),
                  iconSize: 70,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.icons.notification),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.icons.frame),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
