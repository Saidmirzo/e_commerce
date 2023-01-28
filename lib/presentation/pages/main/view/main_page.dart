import 'package:e_commerce/presentation/pages/search/view/search_page.dart';
import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/video_content.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({super.key});
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false ,
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const [VideoContent(), SearchPage()],
          ),
          MyBottomNavigationBar(pageController: pageController),
        ],
      ),
    );
  }
}
