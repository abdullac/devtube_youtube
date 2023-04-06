
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shorts_thumbnail_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
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
      child: VideoPlayIconButton(
        iconButtonPressed: () {
          // play button pressed
          print("play button pressed");
          // BlocProvider.of<ShortsVideoPlayerBloc>(context).add(PlayShortsVideo(
          //     shortsVideoId: ShortsThumbnailWidget.shortVideoId));
        },
      ),
    );
  }
}
