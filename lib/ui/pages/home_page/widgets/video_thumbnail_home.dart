import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/video_title_home.dart';
import 'package:devtube_sample/ui/shared/widgets/video_thumbnail_container.dart';
import 'package:devtube_sample/utils/constants/navigators.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoThumbnailHome extends StatelessWidget {
  const VideoThumbnailHome({
    super.key,
    required this.width,
    required this.height,
    this.isShadowsRadius,
    required this.iconSize,
  });

  final double width;
  final double height;
  final bool? isShadowsRadius;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            gotoVideosListView(context);
          },
          child: Container(
            width: width,
            height: height*25/100,
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Stack(
              children: [
                VideoThumbnailContainer(
                  width: width,
                  height: height,
                  isShadowsRadius: isShadowsRadius,
                  iconSize: iconSize,
                  blocState: state,
                  thumbnailUrl: state.videosData == null
                      ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                      : state.videosData!.videoDetails == null
                          ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                          : state.videosData!.videoDetails!.thumbnails == null
                              ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                              : state.videosData!.videoDetails!.thumbnails!
                                      .isEmpty
                                  ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                                  : state.videosData!.videoDetails!
                                      .thumbnails!["high"]["url"],
                  playButtonPressed: () {
                    // play button pressed
                    printing("play button home video");
                    gotoVideosListView(context);
                  },
                ),
                VideoTitleHome(width: width, height: height),
              ],
            ),
          ),
        );
      },
    );
  }
}



