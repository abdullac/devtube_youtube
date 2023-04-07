import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_thumbnail_widget.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_title_widget.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final double width;
  final double height;
  final dynamic blocState;
  final int index;
  final String thumbnailUrl;
  final String videoId;
  final String videoTitle;
  const VideoCard({
    super.key,
    required this.width,
    required this.height,
    this.blocState,
    required this.index,
    required this.thumbnailUrl,
    required this.videoId,
    required this.videoTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VideosThumbnailWidget(
          width: width,
          height: height,
          blocState: blocState,
          thumbnailUrl: thumbnailUrl,
          videoId: videoId,
          // index: index,
        ),
        VideosTitleWidget(
          // blocState: blocState,
          index: index,
          videoTitle: videoTitle,
        ),
        const VideosIconButtonsBar(),
      ],
    );

    // VideoThumbnailContainer(
    //   width: width,
    //   height: height,
    //   blocState: blocState,
    //   thumbnailUrl: thumbnailUrl,
    // );
  }
}





          // thumbnailUrl: blocState
          //     .videosDataList![index]?.videoDetails?.thumbnails!["high"]["url"],
          // videoId: blocState.videosDataList![index]?.videoId,