import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/video_content.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  List<String> urls = [
    'assets/videos/1.mp4',
    'assets/videos/2.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          VideoContent(urls: urls),
          MyAppBar(),
        ],
      ),
    );
  }
}
