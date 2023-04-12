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
  final bool isWatchLaterAdded;
  final void Function() addlistButtonPressed;
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
    required this.isWatchLaterAdded,
    required this.addlistButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 42.5 / 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        boxShadow: isShadows == true
            ? [
                /// video card shadows
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
      /// video card
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * 32 / 100,
            child: Stack(
              children: [
                /// video thumbnail widget
                VideosThumbnailWidget(
                  width: width,
                  height: height,
                  blocState: blocState,
                  thumbnailUrl: thumbnailUrl,
                  videoId: videoId,
                ),
                /// video icon buttons bar
                Align(
                  alignment: Alignment.bottomCenter,
                  child: VideosIconButtonsBar(
                    size: Size(width, height),
                    addlistButtonPressed: () {
                      addlistButtonPressed();
                    },
                    isWatchLaterAdded: isWatchLaterAdded,
                  ),
                ),
              ],
            ),
          ),
          /// video title widget
          VideosTitleWidget(
            size: Size(width, height),
            videoTitle: videoTitle,
          ),
        ],
      ),
    );
  }
}
