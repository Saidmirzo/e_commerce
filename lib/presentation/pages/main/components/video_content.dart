import 'package:e_commerce/presentation/pages/main/components/image_view_widget.dart';
import 'package:e_commerce/presentation/pages/main/components/video_player.dart';
import 'package:e_commerce/presentation/pages/main/components/widget_categories.dart';
import 'package:e_commerce/presentation/pages/main/components/widget_opinions.dart';
import 'package:flutter/material.dart';
import '../../../../config/constants/local_data.dart';
import 'bottom_about_widget.dart';
import 'more_images_view_widget.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: urls.map((VideoModel url) {
            return VideoItem(url: url);
          }).toList(),
        ),
        const Categories(),
      ],
    );
  }
}

class VideoItem extends StatefulWidget {
  const VideoItem({
    Key? key,
    required this.url,
  }) : super(key: key);

  final VideoModel url;

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  bool isMore = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isMore)
          MoreImagesViewWidget(url: widget.url)
        else if (widget.url.isImg)
          ImageView(urls: widget.url.imgUrls!)
        else
          MyVideoPlayer(url: widget.url.videoUrl!),
        BottomAbout(
          funcMoreButton: () {
            setState(() {
              isMore = true;
            });
          },
          isMore: isMore,
        ),
        const Opinions(),
      ],
    );
  }
}
