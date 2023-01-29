import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/presentation/components/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/local_data.dart';
import '../../../../components/categories_button_widget.dart';

class DetailsSizeAndFit extends StatefulWidget {
  const DetailsSizeAndFit({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsSizeAndFit> createState() => _DetailsSizeAndFitState();
}

class _DetailsSizeAndFitState extends State<DetailsSizeAndFit> {
  int activeIndexButton = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Row(
            children: [
              CustomTextButton(
                onTap: () {},
                text: 'Local Size',
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 20.w),
              ),
              const Spacer(),
              CategoriesButton(
                text: 'CM',
                isActive: activeIndexButton == 0,
                onTap: () {
                  setState(() {
                    activeIndexButton = 0;
                  });
                },
              ),
              CategoriesButton(
                text: 'IN',
                isActive: activeIndexButton == 1,
                onTap: () {
                  setState(() {
                    activeIndexButton = 1;
                  });
                },
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(right: 25.w, left: 25.w, bottom: 25.h, top: 27.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Measurements',
                style: AppTextStyles.body15w7,
              ),
              Text(
                'Body Measuremets',
                style: AppTextStyles.body15w7.copyWith(
                  color: AppColors.accentColor.withOpacity(.4),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 22.w),
          child: DataTable(
            horizontalMargin: 5,
            columnSpacing: 20,
            border: TableBorder(
              horizontalInside: BorderSide(
                color: AppColors.accentColor.withOpacity(.2),
                width: .5,
              ),
            ),
            columns: [
              DataColumn(
                label: Text('SIZE', style: AppTextStyles.body15w7),
              ),
              DataColumn(
                label: Text('Shoulder', style: AppTextStyles.body15w7),
              ),
              DataColumn(label: Text('Length', style: AppTextStyles.body15w7)),
              DataColumn(
                  label: Text('Sleeve Length', style: AppTextStyles.body15w7)),
              DataColumn(label: Text('Bust', style: AppTextStyles.body15w7)),
              DataColumn(label: Text('Cuff', style: AppTextStyles.body15w7)),
            ],
            rows: List.generate(
              5,
              (index) => DataRow(
                cells: [
                  DataCell(
                    Text(products[index].size, style: AppTextStyles.body15w7),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        products[index].shoulder.toString(),
                        style: AppTextStyles.body15w5
                            .copyWith(color: AppColors.textColor3),
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        products[index].length.toString(),
                        style: AppTextStyles.body15w5
                            .copyWith(color: AppColors.textColor3),
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        products[index].sleeve.toString(),
                        style: AppTextStyles.body15w5
                            .copyWith(color: AppColors.textColor3),
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        products[index].bust.toString(),
                        style: AppTextStyles.body15w5.copyWith(
                          color: AppColors.textColor3,
                        ),
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        products[index].cuff.toString(),
                        style: AppTextStyles.body15w5
                            .copyWith(color: AppColors.textColor3),
                      ),
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
