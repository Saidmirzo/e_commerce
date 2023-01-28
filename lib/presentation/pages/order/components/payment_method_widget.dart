import 'package:e_commerce/presentation/pages/order/components/payment_methot_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/constants.dart';

class PaymentMethodsWidget extends StatefulWidget {
  const PaymentMethodsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentMethodsWidget> createState() => _PaymentMethodsWidgetState();
}

class _PaymentMethodsWidgetState extends State<PaymentMethodsWidget> {
  int itemMethod = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Method', style: AppTextStyles.body18w7),
        SizedBox(height: 15.h),
        ...List.generate(
          3,
          (index) => PaymentMethotItem(
            preFixIcon: listPaymentMethods[index].prefixIcon,
            title: listPaymentMethods[index].title,
            suffixIcon: listPaymentMethods[index].suffixIcon,
            isActive: index == itemMethod,
            onTap: () {
              setState(() {
                itemMethod = index;
              });
            },
          ),
        )
      ],
    );
  }
}
