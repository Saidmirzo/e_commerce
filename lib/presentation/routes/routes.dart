import 'package:e_commerce/presentation/pages/main/view/main_page.dart';
import 'package:flutter/material.dart';


class Routes {
  static const signPage = '/signPage';
  static const signCodePage = '/signCodePage';
  static const landingPage = '/';
  static const tvPage = '/tvPage';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) =>  MainPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  MainPage(),
      );
    }
  }
}
