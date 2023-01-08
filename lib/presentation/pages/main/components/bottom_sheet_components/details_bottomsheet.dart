import 'dart:ui';
import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/presentation/components/custom_divider.dart';
import 'package:e_commerce/presentation/pages/main/components/bottom_sheet_components/product_details_tab.dart';
import 'package:e_commerce/presentation/pages/main/components/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/constants/constants.dart';
import '../../../../components/my_tabbar.dart';
import 'reviews_tab.dart';
import 'details_shipping_widget.dart';
import 'details_size_and_fit.dart';

class DetailsBottomSheet extends StatefulWidget {
  const DetailsBottomSheet({super.key});

  @override
  State<DetailsBottomSheet> createState() => _DetailsBottomSheetState();
}

class _DetailsBottomSheetState extends State<DetailsBottomSheet>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 5, vsync: this);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.r),
        topRight: Radius.circular(30.r),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: 686.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
            gradient: AppColors.gradients.detailsGradient,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  const CustomDivider(),
                  MyTabbar(tabController: tabController),
                  Flexible(
                    fit: FlexFit.tight,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        ProductDetailsTab(productDetails: productDetails),
                        const DetailsShippingWidget(),
                        Container(),
                        const DetailsSizeAndFit(),
                        const ReviewsTab(),
                      ],
                    ),
                  ),
                ],
              ),
              const MyAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
