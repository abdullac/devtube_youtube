import 'package:devtube_sample/core/providers/bloc/api/api_bloc_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/core/providers/di/injectable.dart';
import 'package:devtube_sample/core/services/i_facades/home/home_facade.dart';
import 'package:devtube_sample/core/services/i_repository/home/home_repository.dart';
import 'package:devtube_sample/ui/pages/home_page/page_home.dart';
import 'package:devtube_sample/ui/pages/search_results_page/page_search_results.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/shorts_pageview_page/page_shorts_pageview.dart';
import 'ui/pages/video_player_page/page_vieo_player.dart';
import 'ui/pages/videos_listview_page/page_videos_listview.dart';

String imageTitle = "tuturtu utureut uurt ututurtu utureut uurt uu errteru errter";
String imageHorizontal = "https://newtaipei.travel/content/images/attractions/25814/480x360_attractions-image-i6v-hs0zjeejmuwgb6os1w.jpg";
String imageVertical = "https://cdn.wallpapersafari.com/54/64/BJv2UZ.jpg";

/// "https://www.youtube.com/shorts/hKwrn5-7FjQ"  youtube shorts
List<String> channelIdList = [];

enum ScreenPage {
  home,
  videoListView,
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        // BlocProvider(create: (context) => ShortsVideoPlayerBloc()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => ShortsVideoPlayerBloc(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: MainPage(),
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetVideosDataList());
    });
    // return const PageHome();
    // return const PageVideosListview();
    return const PageShortsPageview();
    // return PageVideoPlayer(videoId: "Tp_YZNqNBhw",);
    // return const PageSearchResults();
  }
}






//  MultiBlocProvider(
//       providers: [
//         // BlocProvider(create: (context) => getIt<ApiBlocBloc>())
//       ],
//       child:



// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // dioGet();
//     // GetApi();
//     print("qqqq");
//     // BlocProvider.of<ApiBlocBloc>(context).add(const ApiGet());
//     getIt<GetApi>();
//     print("wwwww");
//     return const Placeholder();
//   }
// }

// @injectable
// class GetApi {
//   final DioFacade dioFacade;
//   GetApi(this.dioFacade){
//     dioFacade.dioGet();
//   }
// }












/////////////////////////////////////////////////////
///



    // // You can get IDs from PlaylistItems or Search API
    // const IDs = ["videoID1", "videoID2", "videoID3"];

    // // Get the analytics data of selected videos based on their IDs
    // const { data: analyticsData } = await youtubeAnalytics.reports.query({
    //   ids: "channel==MINE",
    //   startDate: "2019-01-01",
    //   // Today's date
    //   endDate: new Date().toISOString().split("T")[0],
    //   metrics: "views",
    //   dimensions: "video,creatorContentType",
    //   filters: `video==${IDs.join(",")}`,
    //   access_token,
    // });