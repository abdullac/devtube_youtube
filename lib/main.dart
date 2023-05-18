import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/core/providers/di/injectable.dart';
import 'package:devtube_sample/ui/pages/home_page/page_home.dart';
import 'package:devtube_sample/utils/constants/proiders.dart';
import 'package:devtube_sample/utils/functions/set_app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/settings_page/widgets/color_theme_selection.dart';


Future<void> main() async {
  /// app start after configuretion
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ColorThemeSeletion.selectColorThemeNotifier,
      builder: (context,newValue,_) {
        return MultiBlocProvider(
          /// create bloc providers
          providers: [
            BlocProvider(create: (context) => getIt<HomeBloc>()),
            BlocProvider(create: (context) => getIt<SearchBloc>()),
            BlocProvider(
              create: (context) => ShortsVideoPlayerBloc(),
            )
          ],
          child: MaterialApp(
            theme: ThemeData(
              /// theme colors
                scaffoldBackgroundColor: lightAreaColor(),
                colorScheme: ColorScheme(
                  brightness: Brightness.light,
                  primary: darkAreaColor(),
                  onPrimary: Colors.white,
                  secondary: normalAreaColor(),
                  onSecondary: maxLightAreaColor(),
                  error: normalAreaColor(),
                  onError: maxLightAreaColor(),
                  background: lightAreaColor(),
                  onBackground: darkAreaColor(),
                  surface: normalAreaColor(),
                  onSurface: darkAreaColor(),
                ),
                textTheme: TextTheme(
                  bodyLarge: TextStyle(color: darkAreaColor()),
                  bodyMedium: TextStyle(color: darkAreaColor()),
                  bodySmall: TextStyle(color: normalAreaColor()),
                )),
            scrollBehavior: MyCustomScrollBehavior(),
            debugShowCheckedModeBanner: false,
            home: const Scaffold(
              extendBodyBehindAppBar: true,
              body: SafeArea(
                /// mainPage
                child: MainPage(),
              ),
            ),
          ),
        );
      }
    );
  }
}

/// main page widget
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callVideosDataList(context);
    });
    /// page home
    return const PageHome();
  }
}

/// system navigator black color
var mySystemTheme =
    SystemUiOverlayStyle.light.copyWith(systemNavigationBarColor: Colors.black);

/// desktop scrolling
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}



