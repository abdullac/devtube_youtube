import 'dart:math';
import 'package:devtube_sample/ui/pages/search_results_page/page_search_results.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/ui/shared/widgets/shorts_thumbnail_container.dart';
import 'package:devtube_sample/ui/shared/widgets/videos_title_widget.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/add_to_watch_later.dart';
import 'package:devtube_sample/utils/functions/get_video_id_title.dart';
import 'package:flutter/material.dart';

/// SearchShortsResultItem
class SearchShortsResultItem extends StatelessWidget {
  final Size size;
  final int modifeidIndex;
  int shortsListviewIndex;
  final dynamic shortsBlocState;
  final List<bool?> isWatchLaterListShorts;
  SearchShortsResultItem({
    super.key,
    required this.shortsListviewIndex,
    required this.size,
    required this.shortsBlocState,
    required this.modifeidIndex,
    required this.isWatchLaterListShorts,
  });

  @override
  Widget build(BuildContext context) {
    int getShortsPosition = modifeidIndex - shortsListviewIndex;
    shortsListviewIndex = modifeidIndex - 2;
    shortsListviewIndex += getShortsPosition;
    if (shortsListviewIndex >= shortsBlocState.searchShortsListResults.length) {
      shortsListviewIndex =
          Random().nextInt(shortsBlocState.searchShortsListResults.length - 1);
    }
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
            : Container(
                width: size.width * 60 / 100,
                height: size.height,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        ///  shorts thumbnail container
                        ShortsThumbnailContainer(
                          width: size.width,
                          height: size.height * 50 / 100,
                          thumbnailUrl: shortsBlocState
                              .searchShortsListResults[shortsListviewIndex]!
                              .resultDetails!
                              .thumbnailMap!["high"]["url"],
                          isShadowsRadius: true,
                        ),
                        Positioned(
                          bottom: 0,

                          /// icon buttons bar
                          child: IconButtonsBar(
                            addlistButtonPressed: () {
                              addToWatchLater(
                                getShortsId(
                                    shortsBlocState, shortsListviewIndex),
                                getShortsTitle(
                                    shortsBlocState, shortsListviewIndex),
                              );
                              PageSearchResults
                                  .isWatchLaterListNotifierSearchShorts
                                  .notifyListeners();
                            },
                            height: 40,
                            width: size.width * 60 / 100,
                            iconButtonsBarType:
                                IconButtonsBarType.actionButtons,
                            isWatchLaterAdded:
                                isWatchLaterListShorts[modifeidIndex],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),

                    /// title
                    VideosTitleWidget(
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

