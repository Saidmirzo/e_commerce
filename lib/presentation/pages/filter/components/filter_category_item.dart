import 'package:e_commerce/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_text_styles.dart';
import '../../../components/categories_button_widget.dart';

class FilterCategoryItem extends StatefulWidget {
  const FilterCategoryItem({
    Key? key,
    this.showText,
  }) : super(key: key);
  final bool? showText;

  @override
  State<FilterCategoryItem> createState() => _FilterCategoryItemState();
}

class _FilterCategoryItemState extends State<FilterCategoryItem> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.showText ?? true,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Text('Category', style: AppTextStyles.body17w7),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: List.generate(
            listCategoryItems.length,
            (index) => CategoriesButton(
              text: listCategoryItems[index],
              isActive: index == activeIndex,
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
