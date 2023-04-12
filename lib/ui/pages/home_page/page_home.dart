import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/screen_shade.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_thumbnail_home.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_title_container.dart';
import 'package:devtube_sample/ui/shared/widgets/appbar_widget.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/video_thumbnail_home.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/constants/navigators.dart';
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
          /// appBar
          child: AppBarWidget(size: screenSize),
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
                      /// shorts title
                      const ShortsThumbnailHome(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          /// shorts title
                          ShortsTitleContainer(size: Size(width, height)),
                          /// video thumbnail
                          VideoThumbnailHome(
                            width: width,
                            height: height,
                            isShadowsRadius: true,
                            iconSize: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            /// top, bottom black shades
            ScreenShade(
              size: Size(width, 70),
              alignment: Alignment.topCenter,
              screenShadeRotate: ScreenShadeRotate.top,
              shadeOnTap: () => gotoShortsPageView(context),
            ),
            ScreenShade(
              size: Size(width, 70),
              alignment: Alignment.bottomCenter,
              screenShadeRotate: ScreenShadeRotate.bottom,
              shadeOnTap: () => gotoVideosListView(context),
            ),
          ],
        ),
      ),
    );
  }
}
