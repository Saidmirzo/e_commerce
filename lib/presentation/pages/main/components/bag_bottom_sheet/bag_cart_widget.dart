import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              AnimatedCart(
                path: path,
                isAnim: removeButton,
              ),
              Visibility(
                visible: removeButton,
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.all(3),
                    onPressed: () {
                      funcRemove();
                    },
                    icon: Icon(
                      Icons.cancel_rounded,
                      color: AppColors.accentColor.withOpacity(.5),
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


