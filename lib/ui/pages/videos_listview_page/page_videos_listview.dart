import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/widget/videos_thumbnail_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/videos_title_widget.dart';

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
          child: const IconButtonsBar(
            height: 0,
            width: double.infinity,
            iconButtonsBarType: IconButtonsBarType.utilButtons,
          ),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.only(top: 0),
                    itemCount: state.videosDataList!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        width: 100,
                        margin: const EdgeInsets.all(5),
                        color: Colors.amber,
                        child: VideoCard(
                          width: screenSize.width,
                          height: screenSize.height,
                          blocState: state,
                          index: index,
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

class VideoCard extends StatelessWidget {
  final double width;
  final double height;
  final dynamic blocState;
  final int index;
  const VideoCard({
    super.key,
    required this.width,
    required this.height,
    this.blocState,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VideosThumbnailWidget(
            width: width, height: height, blocState: blocState, index: index),
        VideosTitleWidget(blocState: blocState, index: index),
        const VideosIconButtonsBar(),
      ],
    );

    // VideoThumbnailContainer(
    //   width: width,
    //   height: height,
    //   blocState: blocState,
    //   thumbnailUrl: thumbnailUrl,
    // );
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
