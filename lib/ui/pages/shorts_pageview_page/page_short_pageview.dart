import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_thumbnail_container.dart';
import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/shorts_iconbuttons_bar.dart';
import 'widgets/shorts_title_widget.dart';
import 'widgets/shorts_play_button.dart';
import 'widgets/shorts_thumbnail_widget.dart';

class PageShortPageview extends StatelessWidget {
  const PageShortPageview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// before, you must call videosDataListBloc for ollect hannelId
      // BlocProvider.of<HomeBloc>(context).add(const GetShortsDataList());
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Container(
                color: Colors.purpleAccent,
                child: PageView.builder(
                  itemCount: state.shortsDataList?.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => PageViewItem(
                    blocState: state,
                    index: index,
                  ),
                ),
              );
      },
    );
  }
}

class PageViewItem extends StatelessWidget {
  final dynamic blocState;
  final int index;
  const PageViewItem({
    super.key,
    this.blocState,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return blocState.isLoading
        ? const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Stack(
            children: [
              ShortsThumbnailWidget(blocState: blocState, index: index),
              const ShortsPlayButton(),
              ShortsTitleWidget(blocState: blocState, index: index),
              const ShortsIconButtonsBar()
            ],
          );
  }
}
