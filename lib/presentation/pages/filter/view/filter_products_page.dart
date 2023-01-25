import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/config/constants/constants.dart';
import 'package:e_commerce/presentation/pages/filter/components/bottom_buttons_widget.dart';
import 'package:e_commerce/presentation/pages/filter/components/filter_category_item.dart';
import 'package:e_commerce/presentation/pages/filter/components/filter_color_item.dart';
import 'package:e_commerce/presentation/pages/filter/components/filter_material_item.dart';
import 'package:e_commerce/presentation/pages/filter/components/filter_price_item.dart';
import 'package:e_commerce/presentation/pages/filter/components/filter_size_item.dart';
import 'package:e_commerce/presentation/pages/filter/components/filter_style_item.dart';
import 'package:e_commerce/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/categories_button_widget.dart';

class FilterProductsPage extends StatefulWidget {
  const FilterProductsPage({super.key});

  @override
  State<FilterProductsPage> createState() => _FilterProductsPageState();
}

class _FilterProductsPageState extends State<FilterProductsPage> {
  int activeIndex = 0;
  final List<Widget> listWidgets = [
    const FilterCategoryItem(showText: false),
    const FilterSizeItem(showText: false),
    const FilterColorItem(showText: false),
    const FilterMaterialItem(showText: false),
    const FilterPriceItem(showText: false),
    const FilterStyleItem(showText: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 64.h,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: List.generate(
                        listFilterProdNames.length,
                        (index) => CustomButton(
                          isActive: index == activeIndex,
                          text: listFilterProdNames[index],
                          onTap: () {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 24.w),
                    Expanded(child: listWidgets[activeIndex]),
                  ],
                ),
              ],
            ),
            BottomButtonsWidget(
              funcClear: () {},
              funcSeeResults: () {
                Navigator.pushNamed(context, Routes.filterPage);
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.isActive,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final bool isActive;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 66.h,
        width: 100.w,
        margin: EdgeInsets.symmetric(vertical: 5.h),
        padding: EdgeInsets.only(left: 16.w),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.accentColor.withOpacity(.08)
              : Colors.transparent,
        ),
        child: Text(
          text,
          style: AppTextStyles.body14w7,
        ),
      ),
    );
  }
}
