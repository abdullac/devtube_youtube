import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/shared/widgets/video_card.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageVideosListview extends StatelessWidget {
  const PageVideosListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callVideosDataList(context);
    });
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, screenSize.height * 10 / 100),
          child: const VideoListPageAppBar(),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : state.videosDataList.isEmpty
                    ? const Center(
                        child: Text("Not available Video Items"),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.only(top: 0),
                        itemCount: state.videosDataList.length,
                        // itemCount: 10,
                        itemBuilder: (context, index) {
                          return state.videosDataList[index] == null
                              ? const Center(
                                  child: Text("Not available this Video Data"),
                                )
                              : state.videosDataList[index]!.videoDetails ==
                                      null
                                  ? const Center(
                                      child: Text(
                                          "Not available this Video Details"),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: VideoCard(
                                        width: screenSize.width,
                                        height: screenSize.height,
                                        isShadows: true,
                                        blocState: state,
                                        index: index,
                                        thumbnailUrl: state
                                            .videosDataList[index]
                                            ?.videoDetails
                                            ?.thumbnails!["high"]["url"],
                                        // thumbnailUrl: imageHorizontal,
                                        videoId: state
                                            .videosDataList[index]!.videoId!,
                                        // videoId: "fgdfgdgdg",
                                        videoTitle: state.videosDataList[index]!
                                            .videoDetails!.title!,
                                        // videoTitle: imageTitle,
                                      ),
                                    );
                        },
                      );
          },
        ),
      ),
    );
  }
}

class VideoListPageAppBar extends StatelessWidget {
  const VideoListPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 5,
      foregroundColor: Colors.black45,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leadingWidth: 30,
      title: const Text(
        "Videos",
        style: TextStyle(
          shadows: [
            Shadow(
              color: Colors.white,
              blurRadius: 9,
            )
          ],
        ),
      ),
      actions: [
        IconButtonsBar(
          height: 40,
          width: 100,
          iconButtonsBarType: IconButtonsBarType.utilButtons,
          searchButtonPressed: () =>
              printing("search Button pressed videoListView"),
          filterButtonPressed: () =>
              printing("filter Button pressed videoListView"),
        ),
      ],
    );
  }
}
