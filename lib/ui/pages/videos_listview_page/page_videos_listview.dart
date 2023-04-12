import 'package:devtube_sample/core/models/home/videos/videos_data.dart';
import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/video_listview_page_appbar.dart';
import 'package:devtube_sample/ui/shared/widgets/video_card.dart';
import 'package:devtube_sample/utils/constants/proiders.dart';
import 'package:devtube_sample/utils/functions/add_%20to_iswatchlaterlist.dart';
import 'package:devtube_sample/utils/functions/add_to_watch_later.dart';
import 'package:devtube_sample/utils/functions/reach_bottom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

bool isScrolled = false;

class PageVideosListview extends StatelessWidget {
  PageVideosListview({Key? key}) : super(key: key);

  ScrollController scrollController = ScrollController(initialScrollOffset: 0);
  static ValueNotifier<List<bool?>> isWatchLaterListNotifier =
      ValueNotifier([]);
  // static List<bool?> isWatchLaterList = [];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callVideosDataList(context);
    });

    /// get screen size
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,

        /// appBar
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, screenSize.height * 10 / 100),
          child: const VideoListViewPageAppBar(),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.isLoading

                /// isLoding prograss indicator
                ? const Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : state.videosDataList.isEmpty
                    ? const Center(
                        child: Text("Not available Video Items"),
                      )

                    /// User scroll notification
                    : NotificationListener<UserScrollNotification>(
                        onNotification: (notification) {
                          /// scroll reached the bottom or top
                          reachedBottomOrTop(notification, context,
                              scrollController: scrollController);
                          return true;
                        },
                        child: ValueListenableBuilder(
                            valueListenable: isWatchLaterListNotifier,
                            builder: (context, newValue, _) {
                              return ListView.builder(
                                controller: scrollController,
                                padding: const EdgeInsets.only(top: 0),
                                itemCount: state.videosDataList.length,
                                itemBuilder: (context, index) {
                                  /// remove duplicate videoData
                                  clearAndAddIsWatchLaterList(
                                      state.videosDataList, isWatchLaterListNotifier);
                                  return state.videosDataList[index] == null
                                      ? const Center(
                                          child: Text(
                                              "Not available this Video Data"),
                                        )
                                      : state.videosDataList[index]!.videoDetails ==
                                              null
                                          ? const Center(
                                              child: Text(
                                                  "Not available this Video Details"),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),

                                              /// video card
                                              child: VideoCard(
                                                width: screenSize.width,
                                                height: screenSize.height,
                                                isShadows: true,
                                                blocState: state,
                                                index: index,
                                                thumbnailUrl: state
                                                        .videosDataList[index]
                                                        ?.videoDetails
                                                        ?.thumbnails!["high"]
                                                    ["url"],
                                                videoId: state
                                                    .videosDataList[index]!
                                                    .videoId!,
                                                videoTitle: state
                                                    .videosDataList[index]!
                                                    .videoDetails!
                                                    .title!,
                                                addlistButtonPressed: () {
                                                  addToWatchLater(
                                                      state
                                                          .videosDataList[
                                                              index]!
                                                          .videoId,
                                                      state
                                                          .videosDataList[
                                                              index]!
                                                          .videoDetails!
                                                          .title);
                                                  isWatchLaterListNotifier
                                                      .notifyListeners();
                                                },
                                                isWatchLaterAdded:
                                                    isWatchLaterListNotifier.value.isEmpty
                                                    ? false
                                                    :isWatchLaterListNotifier.value[index] ??
                                                        false,
                                              ),
                                            );
                                },
                              );
                            }),
                      );
          },
        ),
      ),
    );
  }
}

