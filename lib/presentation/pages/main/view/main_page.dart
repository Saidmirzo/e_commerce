import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/video_content.dart';
import '../components/widget_categories.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List<String> urls = [
    'assets/videos/1.mp4',
    'assets/videos/2.mp4',
    'assets/videos/3.mp4',
    'assets/videos/4.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          VideoContent(urls: urls),
          const Categories(),
          const MyAppBar(),
        ],
      ),
    );
  }
}
