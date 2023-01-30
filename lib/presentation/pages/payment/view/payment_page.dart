import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/components/bottom_total_price_and_confirmation_button.dart';
import 'package:e_commerce/presentation/components/custom_switch.dart';
import 'package:e_commerce/presentation/pages/delivery/components/custom_delivery_app_bar.dart';
import 'package:e_commerce/presentation/pages/delivery/components/row_text_widget.dart';
import 'package:e_commerce/presentation/pages/order/components/amount_column_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../order/components/custom_clipped_button.dart';
import '../../order/components/shopping_address_widget.dart';
import '../components/payment_input_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: CustomDeliveryAppBar(
        name: 'Payment',
        onBack: () => Navigator.pop(context),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20.h),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Information',
                      style: AppTextStyles.body14w6.copyWith(
                        color: AppColors.accentColor.withOpacity(.3),
                      ),
                    ),
                    SizedBox(width: 21.w),
                    CustomClippedButton(
                      text: 'Payment',
                      onTap: () {},
                      width: 95.w,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                PaymentInputWidget(
                  title: 'Cart Number',
                  hintText: '0000 0000 0000 0000',
                  iconPath: Assets.icons.creditCard,
                  formatter: '#### #### #### ####',
                ),
                Row(
                  children: [
                    Expanded(
                      child: PaymentInputWidget(
                        title: 'Expire date',
                        hintText: '00 / 0000',
                        iconPath: Assets.icons.expairData,
                        formatter: '## / ####',
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: PaymentInputWidget(
                        title: 'CVV CODE',
                        hintText: '000',
                        iconPath: Assets.icons.cvvCode,
                        formatter: '###',
                      ),
                    ),
                  ],
                ),
                RowTextWidget(
                  padding: EdgeInsets.only(top: 5.h, bottom: 20.h),
                  text: 'Remember this card for future use',
                  child: const CustomSwitch(),
                ),
                Divider(color: AppColors.dividerColor2),
                ShoppingAddressWidget(
                  name: 'Wade Warren',
                  id: '632881083',
                  address: '2972 Westheimer Rd\nSanta Ana, Illinois 85486',
                  margin: EdgeInsets.symmetric(vertical: 35.h),
                ),
                Text('Total Amount ', style: AppTextStyles.body18w7),
                Container(
                  padding: EdgeInsets.only(top: 24.h, bottom: 33.h, left: 20.w),
                  margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
                  decoration: BoxDecoration(
                    color: AppColors.textFieldBgColor,
                    borderRadius: BorderRadius.circular(11.r),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AmountColumnWidget(
                              title: 'Retail Price', text1: r'$200.00'),
                          SizedBox(height: 24.h),
                          const AmountColumnWidget(
                              title: 'Shipping fee:',
                              text1: '0.00',
                              text2: 'USD'),
                        ],
                      ),
                      SizedBox(width: 30.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const AmountColumnWidget(
                              title: 'Order Number', text1: '№ 453153431'),
                          SizedBox(height: 24.h),
                          const AmountColumnWidget(
                              title: 'Shipping Guarantee:',
                              text1: '0.99',
                              text2: 'USD'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          BottomTotalPriceAndConfirmationButton(
            price: 200.00,
            payTypeIcon: Assets.icons.logoVisa,
            buttonText: 'PURCHASE',
            onConfirm: () {},
          )
        ],
      ),
    );
  }
}
