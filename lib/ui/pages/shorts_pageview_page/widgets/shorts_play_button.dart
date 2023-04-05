import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
import 'package:flutter/material.dart';

class ShortsPlayButton extends StatelessWidget {
  const ShortsPlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: VideoPlayIconButton(
        iconButtonPressed: () {
          // play button pressed
          print("play button pressed");
        },
      ),
    );
  }
}