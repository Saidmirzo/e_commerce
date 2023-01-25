import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_decorations.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/categories_button_widget.dart';

class Categories extends StatefulWidget {
  const Categories({
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.filterProductsPage);
              },
              child: Container(
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
            ),
            ...List.generate(
              3,
              (index) => CategoriesButton(
                text: textButtons[index],
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
