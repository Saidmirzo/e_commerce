import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/presentation/components/custom_switch.dart';
import 'package:e_commerce/presentation/components/custom_text_confirm_button.dart';
import 'package:e_commerce/presentation/pages/delivery/components/custom_delivery_app_bar.dart';
import 'package:e_commerce/presentation/pages/delivery/components/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/constants.dart';
import '../components/delivery_method_item.dart';

class DeliveryMethodPage extends StatefulWidget {
  const DeliveryMethodPage({super.key});

  @override
  State<DeliveryMethodPage> createState() => _DeliveryMethodPageState();
}

class _DeliveryMethodPageState extends State<DeliveryMethodPage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: CustomDeliveryAppBar(
        name: 'Delivery Method',
        onBack: () => Navigator.pop(context),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              ...List.generate(
                3,
                (index) => DeliveryMethodItem(
                  cost: listDeliveryMethod[index].cost,
                  time: listDeliveryMethod[index].time,
                  iconPath: listDeliveryMethod[index].iconPath,
                  isActive: index == activeIndex,
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
              ),
              const RowTextWidget(text: 'Make Default', child: CustomSwitch()),
              const Spacer(),
              CustomTextConfirmButton(
                text: 'SAVE',
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
