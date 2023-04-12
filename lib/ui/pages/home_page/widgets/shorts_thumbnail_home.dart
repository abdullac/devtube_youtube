import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/shared/widgets/shorts_thumbnail_container.dart';
import 'package:devtube_sample/utils/constants/navigators.dart';
import 'package:devtube_sample/utils/constants/proiders.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShortsThumbnailHome extends StatelessWidget {
  const ShortsThumbnailHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// before, you must call videosDataListBloc for ollect hannelId
      callShortsDataList(context);
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            gotoShortsPageView(context);
          },
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 100, top: 5, left: 5, right: 5),
                /// shorts thumbnail container
            child: ShortsThumbnailContainer(
              height: double.infinity,
              width: double.infinity,
              isShadowsRadius: true,
              thumbnailUrl: state.shortsData == null
                  ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                  : state.shortsData!.thumbnailUrlList == null
                      ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                      : state.shortsData!.thumbnailUrlList!.isEmpty
                          ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                          : state.shortsData!.thumbnailUrlList![0]["url"],
              iconButtonPressed: () {
                // short play button pressed
                printing("play button pressed");
                gotoShortsPageView(context);
              },
            ),
          ),
        );
      },
    );
  }
}


