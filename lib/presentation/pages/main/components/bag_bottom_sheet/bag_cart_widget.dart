import 'package:e_commerce/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';
import 'animation_cart.dart';

class BagCartWidget extends StatelessWidget {
  const BagCartWidget({
    Key? key,
    required this.path,
    required this.name,
    required this.cost,
    required this.size,
    required this.color,
    required this.removeButton,
    required this.funcRemove,
  }) : super(key: key);
  final String path;
  final String name;
  final double cost;
  final String size;
  final Color color;
  final Function funcRemove;
  final bool removeButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 146.h,
                width: 100.w,
                margin: EdgeInsets.only(
                    bottom: 13.h, right: 8.w, left: 8.w, top: 10.h),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.r),
                  color: AppColors.cartBgColor,
                ),
                child: Image.asset(path),
              ),
              Visibility(
                visible: removeButton,
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      funcRemove();
                    },
                    child: Container(
                      height: 24.h,
                      width: 24.h,
                      padding: EdgeInsets.all(4.h),
                      decoration: const BoxDecoration(
                          color: AppColors.black, shape: BoxShape.circle),
                      child: Container(
                        height: 20.h,
                        width: 20.h,
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                            color: AppColors.removeButtonColor,
                            shape: BoxShape.circle),
                        child: SvgPicture.asset(Assets.icons.cancel),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
            name,
            style: AppTextStyles.body12w4
                .copyWith(fontFamily: AppTextStyles.fontFamilyGrafita),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h, bottom: 7.h),
            child: Text('\$${cost.ceil()}', style: AppTextStyles.body12w5),
          ),
          Row(
            children: [
              Text(
                'Size $size Color',
                style: AppTextStyles.body10w5.copyWith(
                  color: AppColors.textColor2,
                ),
              ),
              Container(
                height: 10.h,
                width: 10.h,
                margin: EdgeInsets.only(left: 4.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
