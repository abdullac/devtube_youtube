import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
import 'package:flutter/material.dart';

class VideoThumbnailContainer extends StatelessWidget {
  final double width;
  final double height;
  final dynamic blocState;
  final String? thumbnailUrl;
  final void Function() playButtonPressed;
  final bool? isShadowsRadius;
  final double? iconSize;

  const VideoThumbnailContainer({
    super.key,
    required this.width,
    required this.height,
    required this.blocState,
    required this.thumbnailUrl,
    required this.playButtonPressed,
    this.isShadowsRadius,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return blocState.isLoading
        ? const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          )
        : Container(
            width: width,
            height: height * 26 / 100,
            decoration: BoxDecoration(
              borderRadius: isShadowsRadius == true
                  ? const BorderRadius.all(Radius.circular(5))
                  : null,
              boxShadow: isShadowsRadius == true
                  ? [
                      const BoxShadow(
                        color: Colors.black87,
                        offset: Offset(0, 1),
                        blurRadius: 3,
                        spreadRadius: 3,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(0, -1.3),
                        blurRadius: 0.5,
                        spreadRadius: 0.5,
                      ),
                    ]
                  : null,
              image: thumbnailUrl == null
                  ? null
                  : DecorationImage(
                      image: NetworkImage(
                        // imageUrl,
                        thumbnailUrl!,
                      ),
                      fit: BoxFit.cover),
            ),
            child: thumbnailUrl == null
                ? const Text("Not available this Video Thumbnail")
                : VideoPlayIconButton(
                    iconSize: iconSize,
                    iconButtonPressed: () {
                      // play button pressed
                      playButtonPressed();
                    },
                  ),
          );
  }
}
