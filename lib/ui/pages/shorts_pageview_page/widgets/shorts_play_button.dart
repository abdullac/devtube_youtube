import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
import 'package:devtube_sample/utils/constants/proiders.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShortsPlayButton extends StatelessWidget {
  const ShortsPlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => ShortsVideoPlayerBloc(),
          child: VideoPlayIconButton(
            iconSize: 70,
            iconButtonPressed: () {
              // play button pressed
              printing("play button pressed");
              callPlayShortsVideo(context);
            },
          ),
        );
      }),
    );
  }


}
