import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/constants.dart';
import 'custom_check_box.dart';

class FilterMaterialItem extends StatefulWidget {
  const FilterMaterialItem({
    Key? key,
    this.showText,
  }) : super(key: key);
  final bool? showText;

  @override
  State<FilterMaterialItem> createState() => _FilterMaterialItemState();
}

class _FilterMaterialItemState extends State<FilterMaterialItem> {
  int materialActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.showText ?? true,
          child: Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Text('Material', style: AppTextStyles.body17w7),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: List.generate(
            listMaterialTexts.length,
            (index) => CustomCheckBox(
              isCheck: index == materialActiveIndex,
              onTap: () {
                setState(() {
                  materialActiveIndex = index;
                });
              },
              text: listMaterialTexts[index],
            ),
          ),
        ),
      ],
    );
  }
}
