import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shorts_pageview_appbar.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shortspageview_item.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/constants/proiders.dart';
import 'package:devtube_sample/utils/functions/make_iswatchlaterlist_shortspaeview.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/shorts_iconbuttons_bar.dart';
import 'widgets/shorts_title_widget.dart';
import 'widgets/shorts_thumbnail_widget.dart';

class PageShortsPageview extends StatelessWidget {
  const PageShortsPageview({Key? key}) : super(key: key);

  static ValueNotifier<List<bool?>> isWatchLaterListNotifier = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// before, must call videosDataListBloc for collect hannelId
      callShortsDataList(context);
    });
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        ///  appBar
        appBar: PreferredSize(preferredSize: Size(screenSize.width, 60),
          child: const ShortsPageviewAppbar()),
        body: 
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : state.shortsDataList.isEmpty
                    ? const Center(
                        child: Text("Not available Shorts Data"),
                      )
                      /// gesture, scroll, shorts videoPlayer
                    : GestureDetector(
                      onVerticalDragEnd: (details) {
                        BlocProvider.of<ShortsVideoPlayerBloc>(context).add(
                            const PlayShortsVideo(shortsVideoId: null));
                        printing("scrolled");
                      },
                      child: ValueListenableBuilder(
                        valueListenable: isWatchLaterListNotifier,
                        builder: (context,newValue,_) {
                          newValue = makeIsWatchLaterListShortsPageview(newValue, state);
                          /// shorts pageView
                          return PageView.builder(
                            itemCount: state.shortsDataList.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => PageViewItem(
                              size: screenSize,
                              blocState: state,
                              index: index,
                              isWatchLaterList: newValue,
                            ),
                          );
                        }
                      ),
                    );
          },
        ),
      ),
    );
  }

 
}



