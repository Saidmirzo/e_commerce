import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/pages/delivery/components/custom_delivery_app_bar.dart';
import 'package:e_commerce/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/custom_text_confirm_button.dart';
import '../../order/components/shopping_address_widget.dart';
import '../components/estimated_time_item.dart';
import '../components/order_date_widget.dart';

class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: CustomDeliveryAppBar(
        name: 'Order tracking',
        onBack: () {},
        action: Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: IconButton(
            onPressed: () =>Navigator.pushReplacementNamed(context, Routes.mainPage),
            icon: SvgPicture.asset(
              Assets.icons.cancel,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        children: [
          const OrderDateWidget(title: 'Order date'),
          OrderDateWidget(
            title: 'Order Number',
            child: Text(
              '№453153431',
              style: AppTextStyles.body15w7,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35.h, bottom: 30.h),
            child: Text(
              'Estimated time of arrival: 10 days',
              style: AppTextStyles.body18w7,
            ),
          ),
          Stack(
            children: [
              Positioned(
                left: 7.w,
                top: 10.h,
                child: Column(
                  children: List.generate(
                    23,
                    (index) => Container(
                      height: 4.h,
                      width: 2.w,
                      margin: EdgeInsets.symmetric(vertical: 4.h),
                      color: AppColors.baseLight.shade20,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  EstimatedTimeItem(
                    title: 'Checkout',
                    subTitle: 'We have received your order.',
                    iconPath: Assets.icons.checkout,
                    isActive: true,
                  ),
                  EstimatedTimeItem(
                    title: 'Order payment',
                    subTitle: 'Payment confirmed',
                    iconPath: Assets.icons.orderPayment,
                    isActive: true,
                  ),
                  EstimatedTimeItem(
                    title: 'Sending an order',
                    subTitle: 'Your order is being prepared\nfor shipment',
                    iconPath: Assets.icons.sendingOrder,
                    isActive: false,
                  ),
                  EstimatedTimeItem(
                    title: 'Receiving an order',
                    subTitle: 'Pending...',
                    iconPath: Assets.icons.receivingOrder,
                    isActive: false,
                  ),
                ],
              ),
            ],
          ),
          ShoppingAddressWidget(
            name: 'Wade Warren',
            id: '632881083',
            address: '2972 Westheimer Rd\nSanta Ana, Illinois 85486',
            margin: EdgeInsets.only(bottom: 128.h),
          ),
          CustomTextConfirmButton(
              text: 'Give feedback'.toUpperCase(), onTap: () {})
        ],
      ),
    );
  }
}
