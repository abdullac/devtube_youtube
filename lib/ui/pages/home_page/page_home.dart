import 'package:devtube_sample/ui/pages/home_page/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_play_iconbutton.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_thumbnail_container.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_title_container.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/video_thumbnail_container.dart';
import 'package:devtube_sample/ui/shared/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

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
            Container(
              width: width,
              height: height,
              color: Colors.red,
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: [
                  const ShortsThumbnailContainer(),
                  ShortsTitleContainer(height: height, width: width),
                  const ShortsPlayIconButton(),
                  IconButtonsBar(height: height, width: width),
                  VideoThumbnailContainer(width: width, height: height),
                ],
              ),
            ),
            Container(
              color: Colors.blueGrey.withOpacity(0.5),
            ),
            /////////
            ///   Video List View
            ////////
          ],
        ),
      ),
    );
  }
}


