import 'package:devtube_sample/ui/shared/widgets/video_thumbnail_container.dart';
import 'package:devtube_sample/utils/constants/navigators.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class VideosThumbnailWidget extends StatelessWidget {
  const VideosThumbnailWidget({
    super.key,
    required this.width,
    required this.height,
    required this.thumbnailUrl,
    required this.blocState,
    required this.videoId,
  });

  final double width;
  final double height;
  final String? thumbnailUrl;
  final dynamic blocState;
  final String? videoId;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 30 / 100,
      color: Colors.grey.shade800,

      ///  video thumbnail container
      child: VideoThumbnailContainer(
        width: width,
        height: height,
        blocState: blocState,
        thumbnailUrl: thumbnailUrl,
        playButtonPressed: () {
          // play button pressed
          printing("play button pressed");
          if (videoId != null) {
            navigateToVideopalyerPage(context, videoId);
          } else {
            printing("Video id is null");
          }
        },
      ),
    );
  }
}

