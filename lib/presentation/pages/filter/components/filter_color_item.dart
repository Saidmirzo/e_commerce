import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../main/components/bottom_sheet_components/circle_button.dart';

class FilterColorItem extends StatefulWidget {
  const FilterColorItem({
    Key? key,
    this.showText,
  }) : super(key: key);
  final bool? showText;

  @override
  State<FilterColorItem> createState() => _FilterColorItemState();
}

class _FilterColorItemState extends State<FilterColorItem> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.showText ?? true,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Text('Color', style: AppTextStyles.body17w7),
          ),
        ),
        Row(
          children: List.generate(
            AppColors.filterColors.length,
            (index) => CircleButton(
              isActive: index == activeIndex,
              color: AppColors.filterColors[index],
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
