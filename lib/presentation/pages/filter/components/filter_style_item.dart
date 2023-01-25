import 'package:e_commerce/presentation/pages/filter/components/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/constants.dart';

class FilterStyleItem extends StatefulWidget {
  const FilterStyleItem({
    Key? key,
    this.showText,
  }) : super(key: key);
  final bool? showText;

  @override
  State<FilterStyleItem> createState() => _FilterStyleItemState();
}

class _FilterStyleItemState extends State<FilterStyleItem> {
  int materialActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.showText ?? true,
          child: Padding(
            padding: EdgeInsets.only(top: 24.h, bottom: 20.h),
            child: Text('Style', style: AppTextStyles.body17w7),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: List.generate(
            listStyleTexts.length,
            (index) => CustomCheckBox(
              isCheck: index == materialActiveIndex,
              onTap: () {
                setState(() {
                  materialActiveIndex = index;
                });
              },
              text: listStyleTexts[index],
            ),
          ),
        ),
      ],
    );
  }
}
