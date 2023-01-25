import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/video_content.dart';
import '../components/widget_categories.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          VideoContent(),
          Categories(),
          MyAppBar(),
        ],
      ),
    );
  }
}
