import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

class ProductDetailsTab extends StatelessWidget {
  const ProductDetailsTab({
    Key? key,
    required this.productDetails,
  }) : super(key: key);

  final Map<String, String> productDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35.h,
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(vertical: 35.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...["#boho gal", "#beach wibes", "#denim"].map((text) => Container(
                      width: 93.w,
                      height: 30.h,
                      margin: EdgeInsets.only(right: 4.5.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.r),
                        color: AppColors.grey.withOpacity(.3),
                      ),
                      child: Text(
                        text,
                        style: AppTextStyles.body12w5.copyWith(color: AppColors.baseLight.shade100),
                      ),
                    )),
                Container(
                  width: 33.h,
                  height: 33.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: AppColors.borderColor2),
                  ),
                  child: Text('+5', style: AppTextStyles.body10w4),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: productDetails.length,
            padding: EdgeInsets.symmetric(horizontal: 27.5.w),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(bottom: 45.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productDetails.keys.elementAt(index),
                    style: AppTextStyles.body15w4,
                  ),
                  SizedBox(
                    width: 244.w,
                    child: Text(
                      productDetails.values.elementAt(index),
                      style: AppTextStyles.body13w4.copyWith(color: AppColors.baseLight.shade50),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
