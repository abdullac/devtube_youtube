import 'dart:math';

import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/shared/widgets/shorts_thumbnail_container.dart';
import 'package:devtube_sample/ui/shared/widgets/videos_title_widget.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// SearchShortsResultsListView
class SearchShortsResultsListView extends StatelessWidget {
  final int index;
  final Size size;
  final dynamic blocState;
  const SearchShortsResultsListView({
    super.key,
    required this.size,
    required this.index,
    this.blocState,
  });

  @override
  Widget build(BuildContext context) {
    int modifidIndex = (index - index ~/ 3);
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, shortsListviewState) {
        int shortsLength = shortsListviewState.searchShortsListResults.length;
        return SizedBox(
          height: size.height * 60 / 100,
          // margin: const EdgeInsets.all(5),
          child: shortsListviewState.searchShortsListResults.isEmpty
              ? Center(
                  child: Text(
                      "Not available search results of '${shortsListviewState.searchedWord}' for shorts"),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shortsLength > modifidIndex
                      ? 2
                      : shortsLength < modifidIndex
                          ? 0
                          : shortsLength - (modifidIndex - 2),
                  itemBuilder: (context, shortsListviewIndex) =>
                      SearchShortsResultItem(
                    shortsListviewIndex: shortsListviewIndex,
                    size: size,
                    modifeidIndex: modifidIndex,
                    shortsBlocState: shortsListviewState,
                  ),
                ),
        );
      },
    );
  }
}

/// SearchShortsResultItem
class SearchShortsResultItem extends StatelessWidget {
  final Size size;
  final int modifeidIndex;
  int shortsListviewIndex;
  final dynamic shortsBlocState;
  SearchShortsResultItem({
    super.key,
    required this.shortsListviewIndex,
    required this.size,
    required this.shortsBlocState,
    required this.modifeidIndex,
  });

  @override
  Widget build(BuildContext context) {
    // shortsBlocState.searchShortsListResults[shortsListviewIndex]!.resultDetails!.thumbnailMap!["url"],
    int getShortsPosition = modifeidIndex - shortsListviewIndex;
    shortsListviewIndex = modifeidIndex - 2;
    shortsListviewIndex += getShortsPosition;
    if (shortsListviewIndex >= shortsBlocState.searchShortsListResults.length) {
      shortsListviewIndex =
          Random().nextInt(shortsBlocState.searchShortsListResults.length - 1);
    }
    print(shortsBlocState.searchShortsListResults[shortsListviewIndex]!
        .resultDetails!.thumbnailMap!["high"]["url"]);
    return shortsBlocState.searchShortsListResults[shortsListviewIndex] == null
        ? const Center(
            child: Text("Not Available this shorts Data"),
          )
        : shortsBlocState.searchShortsListResults[shortsListviewIndex]!
                    .resultDetails ==
                null
            ? const Center(
                child: Text("Not Available this shorts Deatails"),
              )
            // : shortsBlocState.searchShortsListResults[shortsListviewIndex]!.resultDetails!.thumbnailMap == null
            // ? Center(child: Text("Not Available this shorts thumbnail"),)

            : Container(
                width: size.width * 60 / 100,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: const BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        ShortsThumbnailContainer(
                          width: size.width,
                          height: size.height * 50 / 100,
                          // blocState: "blocState",
                          // blocState: shortsBlocState,
                          // thumbnailUrl: imageVertical,
                          thumbnailUrl: shortsBlocState
                              .searchShortsListResults[shortsListviewIndex]!
                              .resultDetails!
                              .thumbnailMap!["high"]["url"],
                          isShadowsRadius: true,
                        ),
                        Positioned(
                          bottom: 0,
                          child: IconButtonsBar(
                            height: 40,
                            width: size.width * 60 / 100,
                            iconButtonsBarType:
                                IconButtonsBarType.actionButtons,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    VideosTitleWidget(
                      // index: shortsListviewIndex,
                      // videoTitle: imageTitle,
                      size: size,
                      videoTitle: shortsBlocState
                          .searchShortsListResults[shortsListviewIndex]!
                          .resultDetails!
                          .title,
                      textColor: Colors.black87,
                    ),
                  ],
                ),
              );
  }
}
