import 'package:devtube_sample/core/providers/bloc/api/api_bloc_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/core/providers/di/injectable.dart';
import 'package:devtube_sample/core/services/i_facades/home/home_facade.dart';
import 'package:devtube_sample/core/services/i_repository/home/home_repository.dart';
import 'package:devtube_sample/ui/pages/home_page/page_home.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/shorts_pageview_page/page_short_pageview.dart';
import 'ui/pages/video_player_page/page_vieo_player.dart';
import 'ui/pages/videos_listview_page/page_videos_listview.dart';

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
      // BlocProvider.of<HomeBloc>(context).add(const GetVideosDataList());
    });
    // return const PageHome();
    // return const PageVideosListview();
    return const PageShortPageview();
    // return PageVideoPlayer(videoId: "Tp_YZNqNBhw",);
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