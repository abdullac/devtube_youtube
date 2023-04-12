
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ShortsVideoPlayer extends StatelessWidget {
  final String shortsVideoId;
  ShortsVideoPlayer({
    super.key,
    required this.shortsVideoId,
  });

    /// shorts youtube player controller, dummy videoId
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
    Size screenSize = MediaQuery.of(context).size;
      /// shorts youtube player  controller with videoId
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
