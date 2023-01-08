import 'dart:ui';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';
import '../../../../../config/constants/constants.dart';
import '../../../../components/custom_divider.dart';
import '../../../../components/custom_material_button.dart';
import 'circle_button.dart';

class AddToCartBottomSheet extends StatefulWidget {
  const AddToCartBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<AddToCartBottomSheet> createState() => _AddToCartBottomSheetState();
}

class _AddToCartBottomSheetState extends State<AddToCartBottomSheet> {
  int colorActiveIndex = 0;
  int buttonActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.r),
        topRight: Radius.circular(30.r),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
        child: Container(
          height: 388.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.black,
                const Color(0xff1A1A1A).withOpacity(.83)
              ].map((e) => e.withOpacity(.75)).toList(),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomDivider(),
              Text(
                'Choose options',
                style: AppTextStyles.body20wB,
              ),
              Padding(
                padding: EdgeInsets.only(top: 34.h, bottom: 11.h),
                child: RichText(
                  text: TextSpan(
                    text: 'Color:',
                    style: AppTextStyles.body16w4,
                    children: [
                      TextSpan(
                        text: 'Total Black',
                        style: AppTextStyles.body16w4.copyWith(
                          color: AppColors.accentColor.withOpacity(.5),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 130.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) => CircleButton(
                      color: colors[index],
                      onTap: () {
                        setState(() {
                          colorActiveIndex = index;
                        });
                      },
                      isActive: index == colorActiveIndex,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
                child: Text(
                  'Size:',
                  style: AppTextStyles.body16w4,
                ),
              ),
              SizedBox(
                width: 224.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) => CustomMaterialButton(
                      text: textButtons[index],
                      isActive: buttonActiveIndex == index,
                      onTap: () {
                        setState(() {
                          buttonActiveIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                height: 45.h,
                width: 225.w,
                margin: EdgeInsets.only(top: 40.h),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(25.r),
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
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add to CART',
                        style: AppTextStyles.body15w7
                            .copyWith(color: AppColors.black),
                      ),
                      SizedBox(width: 10.w),
                      SvgPicture.asset(Assets.icons.shoppingBag)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


