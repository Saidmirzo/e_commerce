import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';

class MaskedImage extends StatelessWidget {
  const MaskedImage({super.key, required this.image, required this.child});

  final ImageProvider image;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ui.Image>(
      future: loadImage(),
      builder: (context, snap) => snap.hasData
          ? ShaderMask(
              blendMode: BlendMode.srcATop,
              shaderCallback: (bounds) {
                return ImageShader(
                  snap.data!,
                  TileMode.mirror,
                  TileMode.decal,
                  Matrix4.identity().storage,
                );
              },
              child: child,
            )
          : Container(),
    );
  }

  Future<ui.Image> loadImage() async {
    final completer = Completer<ui.Image>();
    final stream = image.resolve(const ImageConfiguration());
    stream.addListener(ImageStreamListener(
      (info, _) => completer.complete(info.image),
    ));
    return completer.future;
  }
}
