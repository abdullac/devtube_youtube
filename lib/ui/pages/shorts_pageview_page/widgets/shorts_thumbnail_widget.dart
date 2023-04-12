import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shorts_video_player.dart';
import 'package:devtube_sample/ui/shared/widgets/shorts_thumbnail_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ShortsThumbnailWidget extends StatelessWidget {
  const ShortsThumbnailWidget({
    super.key,
    required this.blocState,
    required this.index,
    required this.size,
  });

  final Size size;
  final dynamic blocState;
  final int index;

  static late String shortVideoId;

  @override
  Widget build(BuildContext context) {
    shortVideoId = (blocState.shortsDataList[index]!.videoId);
    return BlocBuilder<ShortsVideoPlayerBloc, ShortsVideoPlayerState>(
      builder: (context, state) {
        return state.shortsVideoId != null
              /// shorts videoPlayer
            ? ShortsVideoPlayer(
                shortsVideoId: blocState.shortsDataList[index]!.videoId,
              )
                /// shorts thumbnail container
            : ShortsThumbnailContainer(
                height: size.height,
                width: size.width,
                thumbnailUrl: blocState
                    .shortsDataList[index]!.thumbnailUrlList[0]["url"]);
      },
    );
  }
}
