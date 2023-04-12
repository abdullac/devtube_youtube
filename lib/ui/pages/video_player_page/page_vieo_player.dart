import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PageVideoPlayer extends StatelessWidget {
  final String videoId;
  PageVideoPlayer({
    Key? key,
    required this.videoId,
  }) : super(key: key);
    /// youtube player controller
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
    /// screen size
    Size screenSize = MediaQuery.of(context).size;
    controller = YoutubePlayerController.fromVideoId(
      videoId: videoId,
      autoPlay: true,
      params: const YoutubePlayerParams(
        showFullscreenButton: true,
        strictRelatedVideos: true,
      ),
    );
    ///  youtube player scaffold
    return YoutubePlayerScaffold(
      controller: controller,
      // aspectRatio: 9 / 16,
      aspectRatio: screenSize.width / (screenSize.height - 100),
      builder: (context, player) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                player,
              ],
            ),
          ),
        );
      },
    );
  }
}
