import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/pages/main/components/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
