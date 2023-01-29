import 'dart:ui';

import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/bottom_buttons_widget.dart';
import '../components/filter_category_item.dart';
import '../components/filter_color_item.dart';
import '../components/filter_material_item.dart';
import '../components/filter_price_item.dart';
import '../components/filter_size_item.dart';
import '../components/filter_style_item.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int materialActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                padding: EdgeInsets.only(top: 90.h, bottom: 130.h),
                physics: const BouncingScrollPhysics(),
                children: [
                  const FilterCategoryItem(),
                  Divider(
                    thickness: .5,
                    color: AppColors.accentColor.withOpacity(.2),
                  ),
                  const FilterSizeItem(),
                  Divider(
                    thickness: .5,
                    color: AppColors.accentColor.withOpacity(.2),
                  ),
                  const FilterColorItem(),
                  const FilterMaterialItem(),
                  const FilterPriceItem(),
                  const FilterStyleItem(),
                ],
              ),
            ),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: SizedBox(
                  height: 64.h,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 50.w),
                      Text('Filter Products', style: AppTextStyles.body17w6),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(Assets.icons.cancel),
                      )
                    ],
                  ),
                ),
              ),
            ),
            BottomButtonsWidget(
              funcClear: () {},
              funcSeeResults: () {},
            )
          ],
        ),
      ),
    );
  }
}
