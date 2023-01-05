import 'package:e_commerce/presentation/pages/main/components/video_player.dart';
import 'package:e_commerce/presentation/pages/main/components/widget_categories.dart';
import 'package:e_commerce/presentation/pages/main/components/widget_opinions.dart';
import 'package:flutter/material.dart';

import 'bottom_about_widget.dart';
class VideoContent extends StatelessWidget {
  const VideoContent({
    Key? key,
    required this.urls,
  }) : super(key: key);

  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: urls.map((String url) {
        return VideoItem(url: url);
      }).toList(),
    );
  }
}

class VideoItem extends StatelessWidget {
  const VideoItem({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyVideoPlayer(url: url),
         Categories(),
        const BottomAbout(),
        const Opinions(),
      ],
    );
  }
}








