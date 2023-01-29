import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/assets.dart';
import '../../../components/custom_switch.dart';
import '../../../components/custom_text_confirm_button.dart';
import '../components/custom_delivery_app_bar.dart';
import '../components/custom_input_widget.dart';
import '../components/row_text_widget.dart';

class DeliveryAddressPage extends StatelessWidget {
  const DeliveryAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            CustomDeliveryAppBar(
              name: 'Delivery address',
              onBack: () {},
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    height: 68.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    margin: EdgeInsets.only(top: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.accentColor.withOpacity(.035),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.icons.location),
                        SizedBox(width: 17.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Location*',
                              style: AppTextStyles.body13w7.copyWith(
                                color: AppColors.accentColor.withOpacity(.35),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text('Ukraine', style: AppTextStyles.body14w6)
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomInputWidget(
                          categoryName: 'First Name *',
                          hinText: 'Enter your first name',
                        ),
                        const CustomInputWidget(
                          categoryName: 'Last Name *',
                          hinText: 'Enter your last name',
                        ),
                        const CustomInputWidget(
                          categoryName: 'Phone Number *',
                          hinText: '(12)345 0000',
                          isPhone: true,
                        ),
                        Text(
                          'Need Correct Phone Number for delivery',
                          style: AppTextStyles.body11w5.copyWith(
                            color: AppColors.accentColor.withOpacity(.4),
                          ),
                        ),
                        RowTextWidget(
                          text: 'State/Province *',
                          child: SvgPicture.asset(Assets.icons.arrowRight),
                        ),
                        const CustomInputWidget(
                          categoryName: 'City *',
                          hinText: 'Enter your city',
                        ),
                        const CustomInputWidget(
                          categoryName: 'Address line 1 *',
                          hinText: 'Street, Adress, Company  Name, C/O',
                        ),
                        const CustomInputWidget(
                          categoryName: 'Address line 2 *',
                          hinText:
                              'Apartment, Suite, Unit, Building, Floor, etc. (Optional)',
                        ),
                        const RowTextWidget(
                          text: 'Make Default',
                          child: CustomSwitch(),
                        ),
                        CustomTextConfirmButton(
                          text: 'Continue',
                          onTap: () {},
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 20.h, bottom: 47.h),
                          child: Text(
                            'Privacy & Cookie Policy',
                            style: AppTextStyles.body13w5.copyWith(
                              color: AppColors.accentColor.withOpacity(.3),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


