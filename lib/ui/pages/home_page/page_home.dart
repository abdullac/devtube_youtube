import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_play_iconbutton.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_thumbnail_container.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_title_container.dart';
import 'package:devtube_sample/ui/shared/widgets/video_thumbnail_container.dart';
import 'package:devtube_sample/ui/shared/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(width, height * 10 / 100),
          child: const AppBarWidget(),
        ),
        body: Stack(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Container(
                  width: width,
                  height: height,
                  color: Colors.red,
                  padding: const EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      const ShortsThumbnailContainer(),
                      ShortsTitleContainer(height: height, width: width),
                      const ShortsPlayIconButton(),
                      IconButtonsBarWidget(height: height, width: width),
                      // VideoThumbnailContainer(
                      //   width: width,
                      //   height: height,
                      //   screenPage: ScreenPage.home,
                      //   bloc: (widget) {
                      //     return BlocBuilder<HomeBloc, HomeState>(
                      //       builder: (context, state) {
                      //         return widget(
                      //             blocState: state,
                      //             width: width,
                      //             height: height,
                      //             thumbnailUrl: state.videosData == null
                      //                 ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                      //                 : state.videosData!.videoDetails == null
                      //                     ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                      //                     : state.videosData!.videoDetails!
                      //                             .thumbnails!.isEmpty
                      //                         ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                      //                         : state.videosData!.videoDetails!
                      //                             .thumbnails!["high"]["url"]);
                      //       },
                      //     );
                      //   },
                      // ),
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return Container(
                            width: width,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: VideoThumbnailContainer(
                              width: width,
                              height: height,
                              blocState: state,
                              thumbnailUrl: state.videosData == null
                                  ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                                  : state.videosData!.videoDetails == null
                                      ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                                      : state.videosData!.videoDetails!
                                              .thumbnails!.isEmpty
                                          ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
                                          : state.videosData!.videoDetails!
                                              .thumbnails!["high"]["url"],
                              iconButtonPressed: () {
                                // play button pressed
                                print("play button pressed");
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            // Container(
            //   color: Colors.blueGrey.withOpacity(0.5),
            // ),
            /////////
            ///   Video List View
            ////////
          ],
        ),
      ),
    );
  }
}




class IconButtonsBarWidget extends StatelessWidget {
  const IconButtonsBarWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: height * 27 / 100),
        child: const IconButtonsBar(
          height: 60,
          width: double.infinity,
        ),
      ),
    );
  }
}
