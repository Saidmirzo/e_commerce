import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key, required this.url});
  final String url;

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(widget.url)
      ..initialize().then((value) {
        setState(() {
          videoPlayerController.play();
          videoPlayerController.setLooping(true);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(videoPlayerController);
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }
}
