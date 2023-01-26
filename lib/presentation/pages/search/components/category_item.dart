import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.model,
    this.isLast,
  }) : super(key: key);
  final SearchModel model;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.w, left: 20.w),
          child: Column(
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  model.categoryName,
                  style: AppTextStyles.body17w5.copyWith(
                    color: AppColors.accentColor.withOpacity(.6),
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ),
              ...List.generate(
                isLast ?? false ? 22 : 25,
                (index) => Container(
                  height: 3.h,
                  width: 3.h,
                  margin: EdgeInsets.symmetric(vertical: 6.5.h),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.accentColor.withOpacity(.6),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 408.h,
          width: MediaQuery.of(context).size.width - 45.w - 17.sp,
          child: GridView.custom(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 8.w,
              pattern: [
                const QuiltedGridTile(1, 2),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 2),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              childCount: 3,
              (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 6.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        image: DecorationImage(
                          image: AssetImage(model.listImgPaths[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    model.listImgSubName[index],
                    style: AppTextStyles.body14w5,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
