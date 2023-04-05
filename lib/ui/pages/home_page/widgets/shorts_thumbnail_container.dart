import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShortsThumbnailContainer extends StatelessWidget {
  const ShortsThumbnailContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// before, you must call videosDataListBloc for ollect hannelId
      // BlocProvider.of<HomeBloc>(context).add(const GetShortsDataList());
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final String imageUrl = state.shortsData == null
            ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
            : state.shortsData!.thumbnailUrlList == null
                ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                : state.shortsData!.thumbnailUrlList!.isEmpty
                    ? "https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg"
                    : state.shortsData!.thumbnailUrlList![0]["url"];

        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : state.shortsData == null
                ? const Center(
                    child: Text("Could'nt get any Shorts data"),
                  )
                : Container(
                    margin: const EdgeInsets.only(
                        bottom: 50, top: 5, left: 5, right: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                            imageUrl,
                          ),
                          fit: BoxFit.cover),
                    ),
                  );
      },
    );
  }
}
