import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_thumbnail_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/shared/widgets/video_card.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/widgets/videos_title_widget.dart';

class PageVideosListview extends StatelessWidget {
  const PageVideosListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<HomeBloc>(context).add(const GetVideosDataList());
    });
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, screenSize.height * 10 / 100),
          child: IconButtonsBar(
            height: 40,
            width: double.infinity,
            iconButtonsBarType: IconButtonsBarType.utilButtons,
            searchButtonPressed: () =>
                printing("search Button pressed videoListView"),
            filterButtonPressed: () =>
                printing("filter Button pressed videoListView"),
          ),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : state.videosDataList == null
                    ? const Center(
                        child: Text("Not available Video Items"),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.only(top: 0),
                        itemCount: state.videosDataList!.length,
                        // itemCount: 10,
                        itemBuilder: (context, index) {
                          return state.videosDataList![index] == null
                              ? const Center(
                                  child: Text("Not available this Video Data"),
                                )
                              : state.videosDataList![index]!.videoDetails ==
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
                                            .videosDataList![index]
                                            ?.videoDetails
                                            ?.thumbnails!["high"]["url"],
                                        // thumbnailUrl: imageHorizontal,
                                        videoId: state
                                            .videosDataList![index]!.videoId!,
                                        // videoId: "fgdfgdgdg",
                                        videoTitle: state
                                            .videosDataList![index]!
                                            .videoDetails!
                                            .title!,
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



          



///////////////////////
// class VideoCard extends StatelessWidget {
//   final double width;
//   final double height;
//   const VideoCard({
//     super.key,
//     required this.width,
//     required this.height,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return VideoThumbnailContainer(
//       width: width,
//       height: height,
//       screenPage: ScreenPage.videoListView,
//       bloc: (widget) {
//         return BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             return widget(
//               blocState: state,
//               width: width,
//               height: height,
//               thumbnailUrl: state.videosData == null
//                   ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
//                   : state.videosData!.videoDetails == null
//                       ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
//                       : state.videosData!.videoDetails!.thumbnails!.isEmpty
//                           ? "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg"
//                           : state.videosData!.videoDetails!.thumbnails!["high"]
//                               ["url"],
//             );
//           },
//         );
//       },
//     );
//   }
// }
