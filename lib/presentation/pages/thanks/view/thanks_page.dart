import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_decorations.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/local_data.dart';
import '../../main/components/bag_bottom_sheet/bag_cart_widget.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 60.h, bottom: 40.h),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SvgPicture.asset(Assets.icons.iconThanks),
                Padding(
                    padding: EdgeInsets.only(top: 27.h, bottom: 12.h),
                    child: Text('Thanks for your order!',
                        style: AppTextStyles.body20wB)),
                Text(
                  'Your order has been accepted',
                  style: AppTextStyles.body13w6
                      .copyWith(color: AppColors.textColor3),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                  margin: EdgeInsets.only(top: 30.h, bottom: 28.h),
                  decoration: BoxDecoration(
                    color: AppColors.textFieldBgColor,
                    borderRadius: BorderRadius.circular(11.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '№ 453153431 dated 18.11.2023',
                            style: AppTextStyles.body12w6.copyWith(
                              color: AppColors.textColor2,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            'The order has been placed',
                            style: AppTextStyles.body15w7,
                          )
                        ],
                      ),
                      Text(r'$200.00', style: AppTextStyles.body16w8)
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: AppDecorations.buttonStyle(
                    padding:
                        EdgeInsets.symmetric(vertical: 7.5.h, horizontal: 10),
                    bgColor: Colors.transparent,
                    borderRadius: 30,
                  ),
                  child: Text(
                    'Continue shopping',
                    style: AppTextStyles.body14w7.copyWith(
                      color: AppColors.textColor2,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () =>Navigator.pushNamed(context, Routes.orderTrackingPage),
                  style: AppDecorations.buttonStyle(
                    padding:
                        EdgeInsets.symmetric(vertical: 7.5.h, horizontal: 10),
                    bgColor: Colors.transparent,
                    borderRadius: 30,
                  ),
                  child: Text(
                    'Go to tracking',
                    style: AppTextStyles.body14w7.copyWith(
                      color: AppColors.textColor2,
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                Divider(
                  color: AppColors.dividerColor2,
                  height: 1,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 35.h, bottom: 30.h),
                  child: Text(
                    'The last products you viewed',
                    style: AppTextStyles.body18w8,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 230.h,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 12.w),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: listBagCarts.length,
              itemBuilder: (context, index) {
                BagCartModel model = listBagCarts[index];
                return BagCartWidget(
                  name: model.name,
                  cost: model.cost,
                  color: model.color,
                  path: model.imgPath,
                  size: model.size,
                  removeButton: false,
                  funcRemove: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
