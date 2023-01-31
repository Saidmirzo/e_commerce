import 'package:e_commerce/presentation/pages/delivery/view/delivery_address_page.dart';
import 'package:e_commerce/presentation/pages/delivery_method/view/delivery_method_page.dart';
import 'package:e_commerce/presentation/pages/filter/view/filter_page.dart';
import 'package:e_commerce/presentation/pages/filter/view/filter_products_page.dart';
import 'package:e_commerce/presentation/pages/main/view/main_page.dart';
import 'package:e_commerce/presentation/pages/order/view/order_confirmation_page.dart';
import 'package:e_commerce/presentation/pages/payment/view/payment_page.dart';
import 'package:e_commerce/presentation/pages/search/view/search_page.dart';
import 'package:e_commerce/presentation/pages/thanks/view/thanks_page.dart';
import 'package:e_commerce/presentation/pages/tracking/view/order_tracking_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const mainPage = '/mainPage';
  static const filterPage = '/filterPage';
  static const filterProductsPage = '/filterProductsPage';
  static const searchPage = '/searchPage';
  static const deliveryAddressPage = '/deliveryAddressPage';
  static const orderConfirmationPage = '/orderConfirmationPage';
  static const deliveryMethodPage = '/deliveryMethodPage';
  static const paymantPage = '/paymantPage';
  static const thanksPage = '/thanksPage';
  static const orderTrackingPage = '/';
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case mainPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => MainPage(),
          );
        case filterPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const FilterPage(),
          );
        case filterProductsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const FilterProductsPage(),
          );
        case searchPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SearchPage(),
          );
        case deliveryAddressPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const DeliveryAddressPage(),
          );
        case orderConfirmationPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const OrderConfirmationPage(),
          );
        case deliveryMethodPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const DeliveryMethodPage(),
          );
        case paymantPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const PaymentPage(),
          );
        case thanksPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ThanksPage(),
          );
        case orderTrackingPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const OrderTrackingPage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => MainPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => MainPage(),
      );
    }
  }
}
