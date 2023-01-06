import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_text_styles.dart';
import 'review_item.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "Average Raiting",
              style: AppTextStyles.body20w4,
              children: [
                const TextSpan(text: '   •   '),
                TextSpan(
                  text: '8.8',
                  style: AppTextStyles.body20w4,
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Flexible(
            fit: FlexFit.tight,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) => const ReviewItem(),
            ),
          ),
        ],
      ),
    );
  }
}
