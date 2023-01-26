import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/constants.dart';
import 'package:e_commerce/presentation/pages/main/components/text_button_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/category_item.dart';
import '../components/search_app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 60.h, bottom: 60.h),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
                        child: Text(
                          'Popular searches',
                          style: AppTextStyles.body13w5.copyWith(
                            color: AppColors.accentColor.withOpacity(.5),
                          ),
                        ),
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        runSpacing: 10,
                        children: List.generate(
                          listPopularSearchs.length,
                          (index) => FittedBox(
                            fit: BoxFit.none,
                            child: TextButtonGradient(
                              text: listPopularSearchs[index],
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 36.h, bottom: 24.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 60.h,
                              width: 2.w,
                              margin: EdgeInsets.only(right: 30.w, left: 9.w),
                              color: AppColors.accentColor,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Popular', style: AppTextStyles.head32w7),
                                Text(
                                  'Categories',
                                  style: AppTextStyles.head32w4.copyWith(
                                    color:
                                        AppColors.accentColor.withOpacity(.6),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ...List.generate(
                  listSearchCategory.length,
                  (index) => CategoryItem(
                    model: listSearchCategory[index],
                    isLast: index == listSearchCategory.length - 1,
                  ),
                ),
              ],
            ),
            const SearchAppBar(),
          ],
        ),
      ),
    );
  }
}
