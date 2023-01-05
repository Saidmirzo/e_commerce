
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Opinions extends StatelessWidget {
  const Opinions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 340.h,
      right: 10.w,
      child: SizedBox(
        height: 220.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.claps),
                  Text(
                    '1 323',
                    style: AppTextStyles.body12w5,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.star),
                  Text(
                    '102',
                    style: AppTextStyles.body12w5,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.send),
                  Text(
                    '11',
                    style: AppTextStyles.body12w5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}