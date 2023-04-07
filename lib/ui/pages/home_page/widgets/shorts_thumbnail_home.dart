import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/shared/widgets/shorts_thumbnail_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShortsThumbnailHome extends StatelessWidget {
  const ShortsThumbnailHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// before, you must call videosDataListBloc for ollect hannelId
      // BlocProvider.of<HomeBloc>(context).add(const GetShortsDataList());
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 30, top: 75, left: 5, right: 5),
          child: ShortsThumbnailContainer(
            height: double.infinity,
            width: double.infinity,
            isShadowsRadius: true,
            // blocState: state,
            thumbnailUrl: state.shortsData == null
                ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                : state.shortsData!.thumbnailUrlList == null
                    ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                    : state.shortsData!.thumbnailUrlList!.isEmpty
                        ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                        : state.shortsData!.thumbnailUrlList![0]["url"],
          ),
        );
      },
    );
  }
}

