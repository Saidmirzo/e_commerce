import 'package:e_commerce/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/constants/app_colors.dart';
import '../../../../../config/constants/app_text_styles.dart';
import '../../../../../config/constants/assets.dart';
import '../../../../../config/constants/local_data.dart';
import '../../../../components/custom_divider.dart';
import 'bag_cart_widget.dart';

class YourBagBottomSheet extends StatefulWidget {
  const YourBagBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<YourBagBottomSheet> createState() => _YourBagBottomSheetState();
}

class _YourBagBottomSheetState extends State<YourBagBottomSheet> {
  bool isRemove = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 623.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        color: AppColors.bagBottomSheetColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomDivider(),
          Text(
            'Your Bag',
            style: AppTextStyles.head30w5,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 54.h),
            child: Text(
              '${listBagCarts.length} items',
              style: AppTextStyles.body15w4.copyWith(
                color: AppColors.textColor3,
              ),
            ),
          ),
          SizedBox(
            height: 240.h,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 27.w, top: 10.h),
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
                  removeButton: isRemove,
                  funcRemove: () {
                    setState(() {
                      listBagCarts.removeAt(index);
                      isRemove = false;
                    });
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 65.h, bottom: 20.h),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  isRemove = true;
                });
              },
              icon: SvgPicture.asset(Assets.icons.edit),
              label: Text(
                'Edit Bag',
                style: AppTextStyles.body14w4.copyWith(
                  fontFamily: AppTextStyles.fontFamilyGrafita,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(
                context, Routes.deliveryAddressPage),
            child: Container(
              height: 56.h,
              width: 170.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.r),
                color: AppColors.buttonColor,
                boxShadow: const [
                  BoxShadow(color: AppColors.buttonColor, blurRadius: 100)
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Checkout',
                    style: AppTextStyles.body14w4.copyWith(
                      fontFamily: AppTextStyles.fontFamilyGrafita,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    '\$900',
                    style:
                        AppTextStyles.body12w5.copyWith(color: AppColors.black),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  int calcAllPrices(List<BagCartModel> list) {
    double result = 0;
    for (var item in list) {
      result += item.cost;
    }
    return result.ceil();
  }
}
