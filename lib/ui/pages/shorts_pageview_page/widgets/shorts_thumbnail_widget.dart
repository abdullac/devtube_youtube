
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ShortsThumbnailWidget extends StatelessWidget {
  const ShortsThumbnailWidget({
    super.key,
    required this.blocState,
    required this.index,
  });

  final dynamic blocState;
  final int index;

  // static late String shortVideoId;

  @override
  Widget build(BuildContext context) {
    // shortVideoId = (blocState.shortsDataList?[index]?.videoId);
    // print(blocState.shortsDataList[index].videoId);
    return 
    // BlocBuilder<ShortsVideoPlayerBloc, ShortsVideoPlayerState>(
    //   builder: (context, state) {
    // print("shortsVideoId ${state.shortsVideoId}");
    //     return 
        // state.shortsVideoId != null
        //     ? 
            ShortsVideoPlayer(
              shortsVideoId: blocState.shortsDataList?[index]?.videoId,
                // shortsVideoId: state.shortsVideoId!,
              )
            // : Container(
            //     decoration: BoxDecoration(
            //         color: Colors.indigo,
            //         image: DecorationImage(
            //             image: NetworkImage(
            //               blocState.shortsDataList[index].thumbnailUrlList[0]
            //                   ["url"],
            //             ),
            //             fit: BoxFit.cover)),
            //   )
            ;
      // },
    // );
  }
}

class ShortsVideoPlayer extends StatelessWidget {
  final String shortsVideoId;
  ShortsVideoPlayer({
    super.key,
    required this.shortsVideoId,
  });

  YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
    videoId: 'vS3_72Gb-bI',
    autoPlay: false,
    params: const YoutubePlayerParams(
      showFullscreenButton: true,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    print("YoutubePlayerController");
    Size screenSize = MediaQuery.of(context).size;
    controller = YoutubePlayerController.fromVideoId(
      videoId: shortsVideoId,
      autoPlay: true,
      params: const YoutubePlayerParams(
        showFullscreenButton: true,
        strictRelatedVideos: true,
      ),
    );
    return YoutubePlayer(
      controller: controller,
      aspectRatio: screenSize.width / (screenSize.height - 120),
    );
  }
}
