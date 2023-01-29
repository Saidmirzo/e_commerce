
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.urls});
  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: urls.map((url) => Image.asset(url, fit: BoxFit.cover)).toList(),
    );
  }
}
