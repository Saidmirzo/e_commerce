import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/components/custom_switch.dart';
import 'package:e_commerce/presentation/components/custom_text_confirm_button.dart';
import 'package:e_commerce/presentation/pages/delivery/components/custom_delivery_app_bar.dart';
import 'package:e_commerce/presentation/pages/delivery/components/row_text_widget.dart';
import 'package:e_commerce/presentation/pages/main/components/bottom_sheet_components/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/amount_column_widget.dart';
import '../components/custom_clipped_button.dart';
import '../components/payment_method_widget.dart';

class OrderConfirmationPage extends StatelessWidget {
  const OrderConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            CustomDeliveryAppBar(
              name: 'Order Confirmation',
              onBack: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomClippedButton(
                              text: 'Information',
                              onTap: () {},
                            ),
                            Text(
                              'Payment',
                              style: AppTextStyles.body14w6.copyWith(
                                color: AppColors.accentColor.withOpacity(.3),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 144.h,
                          margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 24.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.r),
                            color: AppColors.textFieldBgColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Shopping Adress',
                                  style: AppTextStyles.body13w6),
                              Row(
                                children: [
                                  Text(
                                    'Wade Warren',
                                    style: AppTextStyles.body17w8,
                                  ),
                                  SizedBox(width: 14.w),
                                  Text(
                                    '632881083',
                                    style: AppTextStyles.body12w6.copyWith(
                                      color:
                                          AppColors.accentColor.withOpacity(.3),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2972 Westheimer Rd\nSanta Ana, Illinois 85486',
                                    style: AppTextStyles.body13w6.copyWith(
                                      color: AppColors.textColor3,
                                    ),
                                  ),
                                  Text('Change', style: AppTextStyles.body13w6)
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 97.h,
                              width: 100.w,
                              margin: EdgeInsets.only(right: 22.w),
                              decoration: BoxDecoration(
                                color: AppColors.accentColor.withOpacity(.05),
                                borderRadius: BorderRadius.circular(11.r),
                              ),
                              child: Image.asset(Assets.images.redCoat),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Red Coat',
                                          style: AppTextStyles.body16w8),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 7.h, bottom: 17.h),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Size XS Color',
                                              style: AppTextStyles.body12w6
                                                  .copyWith(
                                                color: AppColors.accentColor
                                                    .withOpacity(.5),
                                              ),
                                            ),
                                            Container(
                                              height: 13.h,
                                              width: 13.h,
                                              margin:
                                                  EdgeInsets.only(left: 10.w),
                                              child: CircleButton(
                                                isActive: true,
                                                color: AppColors.coatColor,
                                                onTap: () {},
                                                padding: EdgeInsets.all(3.h),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '1 item',
                                        style: AppTextStyles.body12w6.copyWith(
                                          color: AppColors.textColor3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    r'$200.00',
                                    style: AppTextStyles.body14w8,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text('Delivery method', style: AppTextStyles.body18w7),
                        Container(
                          height: 112.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 24.h),
                          decoration: BoxDecoration(
                            color: AppColors.textFieldBgColor,
                            borderRadius: BorderRadius.circular(11.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Free Delivery',
                                    style: AppTextStyles.body17w8,
                                  ),
                                  SizedBox(width: 11.w),
                                  Text(
                                    r'+ $0,00',
                                    style: AppTextStyles.body14w6.copyWith(
                                      color: AppColors.buttonColor,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Will be delivered to the specified\naddress within 3-6 working days',
                                    style: AppTextStyles.body12w6
                                        .copyWith(color: AppColors.textColor3),
                                  ),
                                  Text('Change', style: AppTextStyles.body13w6)
                                ],
                              )
                            ],
                          ),
                        ),
                        RowTextWidget(
                          text: r'Shopping Guarantee: $0.99',
                          padding: EdgeInsets.only(top: 24.h, bottom: 20.h),
                          child: const CustomSwitch(),
                        ),
                        Divider(
                          color: AppColors.dividerColor2,
                          thickness: 1,
                        ),
                        RowTextWidget(
                          text: 'Total',
                          padding: EdgeInsets.only(top: 20.h, bottom: 35.h),
                          child:
                              Text(r'$200.00', style: AppTextStyles.body13w7),
                        ),
                        const PaymentMethodsWidget(),
                      ],
                    ),
                  ),
                  Container(
                    height: 1.h,
                    color: AppColors.dividerColor2,
                    margin: EdgeInsets.only(top: 36.h),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextRowWithDivider(name: 'Apply Coupon'),
                        const TextRowWithDivider(
                          name: 'Points',
                          text: r'Total: $0.00',
                        ),
                        const TextRowWithDivider(
                          name: 'Points',
                          text: r'Total: 0',
                        ),
                        RowTextWidget(
                          text: 'Gift Card',
                          padding: EdgeInsets.only(top: 20.h, bottom: 35.h),
                          child: SvgPicture.asset(Assets.icons.arrowRight),
                        ),
                        Text('Total Amount', style: AppTextStyles.body18w7),
                        Container(
                          height: 169.h,
                          margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
                          padding: EdgeInsets.only(
                            top: 24.h,
                            left: 20.w,
                            bottom: 33.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.textFieldBgColor,
                            borderRadius: BorderRadius.circular(11.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Retail Price',
                                style: AppTextStyles.body13w7
                                    .copyWith(color: AppColors.textColor3),
                              ),
                              SizedBox(height: 10.h),
                              Text(r'$200.00', style: AppTextStyles.body18w7),
                              const Spacer(),
                              Row(
                                children: [
                                  const AmountColumnWidget(
                                    title: 'Shipping fee:',
                                    text1: '0.00',
                                    text2: 'USD',
                                  ),
                                  SizedBox(width: 30.w),
                                  const AmountColumnWidget(
                                    title: 'Shipping Guarantee:',
                                    text1: '0.99',
                                    text2: 'USD',
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: AppColors.dividerColor2,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 18.h, bottom: 25.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'To Pay',
                                    style: AppTextStyles.body13w7.copyWith(
                                      color: AppColors.textColor3,
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(r'$200.00',
                                      style: AppTextStyles.body18w8),
                                ],
                              ),
                              SvgPicture.asset(Assets.icons.logoVisa),
                            ],
                          ),
                        ),
                        CustomTextConfirmButton(
                          text: 'PLASCE ORDER',
                          onTap: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



class TextRowWithDivider extends StatelessWidget {
  const TextRowWithDivider({
    Key? key,
    required this.name,
    this.text,
  }) : super(key: key);
  final String name;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                name,
                style: AppTextStyles.body13w7
                    .copyWith(color: AppColors.textColor3),
              ),
              const Spacer(),
              Text(
                text ?? '',
                style: AppTextStyles.body13w7.copyWith(
                  color: AppColors.textColor3,
                ),
              ),
              SizedBox(width: 10.w),
              SvgPicture.asset(Assets.icons.arrowRight),
            ],
          ),
          SizedBox(height: 24.h),
          Divider(
            color: AppColors.dividerColor2,
            thickness: 1,
            height: 1,
          ),
        ],
      ),
    );
  }
}
