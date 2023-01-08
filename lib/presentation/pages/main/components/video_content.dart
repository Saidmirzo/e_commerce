import 'package:e_commerce/presentation/pages/main/components/image_view_widget.dart';
import 'package:e_commerce/presentation/pages/main/components/video_player.dart';
import 'package:e_commerce/presentation/pages/main/components/widget_opinions.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants/constants.dart';
import 'bottom_about_widget.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: urls.map((VideoModel url) {
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

  final VideoModel url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (url.isImg)
          ImageView(urls: url.imgUrls!)
        else
          MyVideoPlayer(url: url.videoUrl!),
        const BottomAbout(),
        const Opinions(),
      ],
    );
  }
}
