import 'dart:ui';

import 'app_colors.dart';
import 'assets.dart';



List<String> listFilterProdNames = [
  "Category",
  "Size",
  "Color",
  "Material",
  "Price",
  "Style"
];
List<String> listCategoryItems = ["New", "Popular", "Sale"];
List<String> listSizeItems = ["XS", "S", "M", "L", "XL"];
List<String> listMaterialTexts = [
  "ABC",
  "Acrylic",
  "Aluminum Alloy",
  "EVA",
  "Fabric",
  "Glass"
];
List<String> listStyleTexts = [
  "Heat Coat",
  "Full Show",
  "Jekcket",
  "Half Show",
  "Glass",
  "Glass"
];





List<String> textButtons = ['XS', 'S', 'M'];
List<Color> colors = [
  AppColors.black,
  AppColors.accentColor,
  AppColors.blue,
];



class PaymentMethotModel {
  PaymentMethotModel({
    required this.prefixIcon,
    required this.title,
    required this.suffixIcon,
  });
  final String prefixIcon;
  final String title;
  final String suffixIcon;
}

List<PaymentMethotModel> listPaymentMethods = [
  PaymentMethotModel(prefixIcon: Assets.icons.creditCard, title: 'Credit/Debit card', suffixIcon: Assets.icons.logoVisa),
  PaymentMethotModel(prefixIcon: Assets.icons.payPal, title: 'PayPal', suffixIcon: Assets.icons.logoPayPal),
  PaymentMethotModel(prefixIcon: Assets.icons.applePay, title: 'Apple Pay', suffixIcon: Assets.icons.logoApplePay),
];

class DeliveryMethodModel {
  DeliveryMethodModel({
    required this.cost,
    required this.time,
    required this.iconPath,
  });
  final double cost;
  final String time;
  final String iconPath;
}

List<DeliveryMethodModel> listDeliveryMethod = [
  DeliveryMethodModel(
    cost: 0.00,
    time: "5-10",
    iconPath: Assets.icons.truck,
  ),
  DeliveryMethodModel(
    cost: 10.00,
    time: "3-5",
    iconPath: Assets.icons.train,
  ),
  DeliveryMethodModel(
    cost: 29.99,
    time: "1-2",
    iconPath: Assets.icons.airplane,
  ),
];
