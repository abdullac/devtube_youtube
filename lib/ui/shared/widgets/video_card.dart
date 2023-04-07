import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_thumbnail_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/videos_title_widget.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final double width;
  final double height;
  final dynamic blocState;
  final int index;
  final String? thumbnailUrl;
  final String? videoId;
  final String? videoTitle;
  final bool? isShadows;
  const VideoCard({
    super.key,
    required this.width,
    required this.height,
    required this.blocState,
    required this.index,
    required this.thumbnailUrl,
    required this.videoId,
    required this.videoTitle,
    this.isShadows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 40 / 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        boxShadow: isShadows == true
            ? [
                const BoxShadow(
                  color: Colors.black87,
                  offset: Offset(0, 1),
                  blurRadius: 3,
                  spreadRadius: 2,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(2.0, 1.5),
                  blurRadius: 0.5,
                  spreadRadius: -2.0,
                ),
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height*32/100,
            child: Stack(
              children: [
                VideosThumbnailWidget(
                  width: width,
                  height: height,
                  blocState: blocState,
                  thumbnailUrl: thumbnailUrl,
                  videoId: videoId,
                  // index: index,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: VideosIconButtonsBar(
                    size: Size(width, height),
                  ),
                ),
              ],
            ),
          ),
          VideosTitleWidget(
            // blocState: blocState,
            index: index,
            videoTitle: videoTitle,
          ),
          // const VideosIconButtonsBar(),
        ],
      ),
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




    //////
    ///
    /// child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     VideosThumbnailWidget(
      //       width: width,
      //       height: height,
      //       blocState: blocState,
      //       thumbnailUrl: thumbnailUrl,
      //       videoId: videoId,
      //       // index: index,
      //     ),
      //     VideosTitleWidget(
      //       // blocState: blocState,
      //       index: index,
      //       videoTitle: videoTitle,
      //     ),
      //     const VideosIconButtonsBar(),
      //   ],
      // ),