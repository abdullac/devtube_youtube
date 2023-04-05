import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PageVideoPlayer extends StatelessWidget {
  final String videoId;
  PageVideoPlayer({
    Key? key,
    required this.videoId,
  }) : super(key: key);

  // final _controller = YoutubePlayerController(
  //   params: const YoutubePlayerParams(
  //     mute: false,
  //     showControls: true,
  //     showFullscreenButton: true,
  //   ),
  // );

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
    // controller.cueVideoById(videoId: "Tp_YZNqNBhw");
    // controller.cueVideoById(videoId: videoId);
    controller = YoutubePlayerController.fromVideoId(
    videoId: videoId,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: true,
      strictRelatedVideos: true,
    ),
  );
    return YoutubePlayerScaffold(
      controller: controller,
      // aspectRatio: 9 / 16,
      autoFullScreen: true,
      builder: (context, player) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                player,
                const Text('Youtube Player'),
              ],
            ),
          ),
        );
      },
    );
  }
}
