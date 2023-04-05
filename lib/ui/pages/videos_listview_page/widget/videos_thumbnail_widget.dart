import 'package:devtube_sample/ui/pages/video_player_page/page_vieo_player.dart';
import 'package:devtube_sample/ui/shared/widgets/video_thumbnail_container.dart';
import 'package:flutter/material.dart';

class VideosThumbnailWidget extends StatelessWidget {
  const VideosThumbnailWidget({
    super.key,
    required this.width,
    required this.height,
    required this.blocState,
    required this.index,
  });

  final double width;
  final double height;
  final dynamic blocState;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Container(
        color: Colors.teal,
        child: VideoThumbnailContainer(
          width: width,
          height: height,
          blocState: blocState,
          thumbnailUrl: blocState
              .videosDataList![index]?.videoDetails?.thumbnails!["high"]["url"],
          iconButtonPressed: () {
            // play button pressed
            print("play button pressed");
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PageVideoPlayer(
                  videoId:
                      blocState.videosDataList![index]?.videoId),
            ));
          },
        ),
      ),
    );
  }
}
