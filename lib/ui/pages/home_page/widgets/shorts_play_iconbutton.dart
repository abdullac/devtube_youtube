import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
import 'package:flutter/material.dart';

class ShortsPlayIconButton extends StatelessWidget {
  const ShortsPlayIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: VideoPlayIconButton(
        iconSize: 50,
        iconButtonPressed: () {
          // short play button
          print("play button pressed");
        },
      ),
    );
  }
}
