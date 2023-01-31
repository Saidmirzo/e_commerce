import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class CustomDeliveryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDeliveryAppBar({
    Key? key,
    required this.name,
    required this.onBack,
    this.action,
  }) : super(key: key);
  final String name;
  final Function onBack;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.black,
      leadingWidth: 64.w,
      leading: action == null
          ? GestureDetector(
              onTap: () => onBack(),
              child: Container(
                // height: 48.h,
                // width: 48.h,
                margin: EdgeInsets.only(left: 20.w),
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.accentColor.withOpacity(.1), width: 1),
                  shape: BoxShape.circle,
                  color: AppColors.searchColor,
                ),
                child: SvgPicture.asset(Assets.icons.arrowLeft),
              ),
            )
          : null,
      actions
      : [action ?? const SizedBox.shrink()],
      
      centerTitle: true,
      title: Text(name, style: AppTextStyles.body17w6),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64.h);
}
