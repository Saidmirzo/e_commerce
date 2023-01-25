import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    Key? key,
    required this.isCheck,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final bool isCheck;
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w, top: 20.h),
      child: InkWell(
        onTap: () => onTap(),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(
              height: 29.h,
              width: 29.h,
              margin: EdgeInsets.only(right: 8.w),
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: isCheck ? AppColors.accentColor : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.accentColor.withOpacity(.3),
                  width: 1.2,
                ),
              ),
              child: isCheck ? SvgPicture.asset(Assets.icons.check) : null,
            ),
            Text(text, style: AppTextStyles.body13w5)
          ],
        ),
      ),
    );
  }
}
