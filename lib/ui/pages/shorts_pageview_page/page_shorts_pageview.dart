import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_thumbnail_home.dart';
import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/shorts_iconbuttons_bar.dart';
import 'widgets/shorts_title_widget.dart';
import 'widgets/shorts_play_button.dart';
import 'widgets/shorts_thumbnail_widget.dart';

class PageShortsPageview extends StatelessWidget {
  const PageShortsPageview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// before, you must call videosDataListBloc for ollect hannelId
      BlocProvider.of<HomeBloc>(context).add(const GetShortsDataList());
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : state.shortsDataList.isEmpty
                ? const Center(
                    child: Text("Not available Shorts Data"),
                  )
                : Container(
                    color: Colors.purpleAccent,
                    child: GestureDetector(
                      onVerticalDragEnd: (details) {
                        BlocProvider.of<ShortsVideoPlayerBloc>(context)
                            .add(const PlayShortsVideo(shortsVideoId: null));
                        printing("scrolled");
                      },
                      child: PageView.builder(
                        itemCount: state.shortsDataList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => PageViewItem(
                          size: screenSize,
                          blocState: state,
                          index: index,
                        ),
                      ),
                    ),
                  );
      },
    );
  }
}

class PageViewItem extends StatelessWidget {
  final Size size;
  final dynamic blocState;
  final int index;
  const PageViewItem({
    super.key,
    this.blocState,
    required this.index,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    print("testing");
    return blocState.shortsDataList[index] == null
        ? const Center(child: Text("Not availabe this Shorts Details"))
        : Stack(
            children: [
              ShortsThumbnailWidget(
                  blocState: blocState, index: index, size: size),
              const ShortsPlayButton(),
              ShortsTitleWidget(blocState: blocState, index: index, size: size),
              const ShortsIconButtonsBar(),
            ],
          );
  }
}
