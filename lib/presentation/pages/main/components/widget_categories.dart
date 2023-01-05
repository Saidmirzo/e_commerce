import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_decorations.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatefulWidget {
  Categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int activeIndex = 0;
  final List<String> textButtons = [
    'Popular',
    'Trending',
    'Sale now',
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      // top: 46.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.w, top: 46.h),
        child: Row(
          children: [
            Container(
              height: 42.h,
              width: 42.h,
              margin: EdgeInsets.only(right: 24.5.w),
              padding: EdgeInsets.all(9.h),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.filterBgColor,
              ),
              child: SvgPicture.asset(Assets.icons.filterSearch),
            ),
            ...List.generate(
              3,
              (index) => CategoriesButton(
                text: textButtons[index],
                index: index,
                isActive: activeIndex == index,
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({
    Key? key,
    required this.text,
    required this.isActive,
    required this.index,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final bool isActive;
  final int index;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: TextButton(
        onPressed: () {
          onTap();
        },
        style: AppDecorations.buttonStyle(
          borderRadius: 37.r,
          bgColor: isActive ? AppColors.accentColor : Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: 28.w,
            vertical: 11.h,
          ),
          border: BorderSide(
            color: AppColors.baseLight.shade100.withOpacity(.3),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.body13w7.copyWith(
              color: isActive
                  ? AppColors.textColor1
                  : AppColors.baseLight.shade100),
        ),
      ),
    );
  }
}
