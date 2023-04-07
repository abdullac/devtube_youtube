import 'package:devtube_sample/ui/pages/video_player_page/page_vieo_player.dart';
import 'package:devtube_sample/ui/shared/widgets/video_thumbnail_container.dart';
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
    // required this.index,
  });

  final double width;
  final double height;
  final String? thumbnailUrl;
  final dynamic blocState;
  final String? videoId;
  // final int index;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Container(
        color: Colors.grey.shade800,
        child: VideoThumbnailContainer(
          width: width,
          height: height,
          blocState: blocState,
          thumbnailUrl: thumbnailUrl,
          playButtonPressed: () {
            // play button pressed
            print("play button pressed");
            if (videoId != null) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageVideoPlayer(
                  videoId: videoId!,
                ),
              ));
            } else {
              printing("Video id is null");
            }
          },
        ),
      ),
    );
  }
}
