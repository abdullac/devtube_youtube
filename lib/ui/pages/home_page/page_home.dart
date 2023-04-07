import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/icon_buttonsbar_home.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_play_iconbutton.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_thumbnail_home.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_title_container.dart';
import 'package:devtube_sample/ui/shared/widgets/video_thumbnail_container.dart';
import 'package:devtube_sample/ui/shared/widgets/appbar_widget.dart';
import 'package:devtube_sample/ui/shared/widgets/video_thumbnail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

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
                  padding: const EdgeInsets.all(0),
                  child: Stack(
                    children: [
                      const ShortsThumbnailHome(),
                      ShortsTitleContainer(size: Size(width, height)),
                      const ShortsPlayIconButton(),
                      IconButtonsBarHome(size: Size(width, height)),
                      VideoThumbnailWidget(
                        width: width,
                        height: height,
                        isShadowsRadius: true,
                        iconSize: 40,
                      ),
                    ],
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: ScreenShade(
                  size: Size(width, 70),
                  screenShadeRotate: ScreenShadeRotate.top),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ScreenShade(
                  size: Size(width, 70),
                  screenShadeRotate: ScreenShadeRotate.bottom),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenShade extends StatelessWidget {
  final Size size;
  final ScreenShadeRotate screenShadeRotate;
  const ScreenShade({
    super.key,
    required this.size,
    required this.screenShadeRotate,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: screenShadeRotate == ScreenShadeRotate.top
          ? 0 * math.pi / 180
          : screenShadeRotate == ScreenShadeRotate.right
              ? 90 * math.pi / 180
              : screenShadeRotate == ScreenShadeRotate.bottom
                  ? 180 * math.pi / 180
                  : 270 * math.pi / 180,
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              colors: [
                Colors.black,
                // Colors.black87,
                Colors.black.withOpacity(0.0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
      ),
    );
  }
}

enum ScreenShadeRotate {
  left,
  top,
  right,
  bottom,
}
