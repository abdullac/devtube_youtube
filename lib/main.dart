import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/core/providers/di/injectable.dart';
import 'package:devtube_sample/ui/pages/home_page/page_home.dart';
import 'package:devtube_sample/ui/pages/settings_page/page_settings.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/color_theme_selection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

String imageTitle =
    "tuturtu utureut uurt ututurtu utureut uurt uu errteru errter";
String imageHorizontal =
    "https://newtaipei.travel/content/images/attractions/25814/480x360_attractions-image-i6v-hs0zjeejmuwgb6os1w.jpg";
String imageVertical = "https://cdn.wallpapersafari.com/54/64/BJv2UZ.jpg";

List<String> channelIdList = [];
String? nextPageToken;
String? prevPageToken;

callVideosDataList(BuildContext context) {
  // BlocProvider.of<HomeBloc>(context).add(const GetVideosDataList(pageToken: null));
}

callShortsDataList(BuildContext context) {
  // BlocProvider.of<HomeBloc>(context).add(const GetShortsDataList());
}

callSearch(BuildContext context) {
  // BlocProvider.of<SearchBloc>(context).add(
  // Search(searchWord: SearchResultsAppBar.searchEditingController.text));
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
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(
          create: (context) => ShortsVideoPlayerBloc(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: darkAreaColor(selectedThemeColor),
              onPrimary: Colors.white,
              secondary: normalAreaColor(selectedThemeColor),
              onSecondary: maxLightAreaColor(selectedThemeColor),
              error: normalAreaColor(selectedThemeColor),
              onError: maxLightAreaColor(selectedThemeColor),
              background: lightAreaColor(selectedThemeColor),
              onBackground: darkAreaColor(selectedThemeColor),
              surface: normalAreaColor(selectedThemeColor),
              onSurface: darkAreaColor(selectedThemeColor),
            ),
            textTheme: TextTheme(
              bodyLarge: TextStyle(color: darkAreaColor(selectedThemeColor)),
              bodyMedium: TextStyle(color: darkAreaColor(selectedThemeColor)),
              bodySmall: TextStyle(color: normalAreaColor(selectedThemeColor)),
            )),
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
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
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callVideosDataList(context);
    });
    return const PageHome();
    // return PageSettings();
  }
}

var mySystemTheme =
    SystemUiOverlayStyle.light.copyWith(systemNavigationBarColor: Colors.black);

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
