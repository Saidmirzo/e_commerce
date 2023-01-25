import 'package:e_commerce/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_text_styles.dart';
import '../../../components/categories_button_widget.dart';

class FilterSizeItem extends StatefulWidget {
  const FilterSizeItem({
    Key? key,
    this.showText,
  }) : super(key: key);
  final bool? showText;

  @override
  State<FilterSizeItem> createState() => _FilterSizeItemState();
}

class _FilterSizeItemState extends State<FilterSizeItem> {
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
            child: Text('Size', style: AppTextStyles.body17w7),
          ),
        ),
        Wrap(
          children: List.generate(
            listSizeItems.length,
            (index) => CategoriesButton(
              text: listSizeItems[index],
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
