import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class CustomInputWidget extends StatelessWidget {
  const CustomInputWidget({
    Key? key,
    required this.categoryName,
    this.child,
    this.hinText,
    this.isPhone,
  }) : super(key: key);
  final String categoryName;
  final Widget? child;
  final String? hinText;
  final bool? isPhone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryName,
            style: AppTextStyles.body13w7.copyWith(
              color: AppColors.textColor3,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            height: 54.h,
            padding: EdgeInsets.only(left: 24.w),
            decoration: BoxDecoration(
              color: AppColors.textFieldBgColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: hinText == null
                ? child
                : TextField(
                    style: AppTextStyles.body13w7,
                    inputFormatters: isPhone == true
                        ? [
                            MaskTextInputFormatter(
                              mask: '(##) ### ####',
                              filter: {"#": RegExp(r'[0-9]')},
                              type: MaskAutoCompletionType.lazy,
                            )
                          ]
                        : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hinText,
                      hintStyle: AppTextStyles.body11w5.copyWith(
                        color: AppColors.accentColor.withOpacity(.2),
                      ),
                      prefix: isPhone == true
                          ? Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.center,
                              children: [
                                SvgPicture.asset(Assets.icons.flagUa),
                                SizedBox(width: 10.w),
                                Text('UA +380 ', style: AppTextStyles.body13w6),
                              ],
                            )
                          : null,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
