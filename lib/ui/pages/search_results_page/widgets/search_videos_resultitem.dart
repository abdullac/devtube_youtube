import 'package:devtube_sample/ui/pages/search_results_page/page_search_results.dart';
import 'package:devtube_sample/ui/shared/widgets/video_card.dart';
import 'package:devtube_sample/utils/functions/add_to_watch_later.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

/// SearchVideosResultItem
class SearchVideosResultItem extends StatelessWidget {
  final int index;
  final Size size;
  final dynamic blocState;
  final List<bool?> isWatchLaterListVideos;
  const SearchVideosResultItem({
    super.key,
    required this.index,
    this.blocState,
    required this.size,
    required this.isWatchLaterListVideos,
  });

  @override
  Widget build(BuildContext context) {
    int modifidIndex = (index - index ~/ 3);
    printing("serchedWord ${blocState.searchedWord}");
    return blocState.searchResultDataList[modifidIndex] == null
        ? const Center(
            child: Text("Not available this video data"),
          )
        : blocState.searchResultDataList[modifidIndex]!.resultDetails == null
            ? const Center(
                child: Text("Not available this video details"),
              )
            : blocState.searchResultDataList[modifidIndex]!.resultDetails
                            .thumbnailMap ==
                        null ||
                    blocState.searchResultDataList[modifidIndex]!.resultDetails
                            .thumbnailMap!["high"] ==
                        null ||
                    blocState.searchResultDataList[modifidIndex]!.resultDetails
                            .thumbnailMap!["high"]["url"] ==
                        null
                ? const Center(
                    child: Text("Not available this video thumbnail"),
                  )
                : Padding(
                    padding: const EdgeInsets.all(7.0),
                    /// video card
                    child: VideoCard(
                      width: double.infinity,
                      height: size.height,
                      isShadows: true,
                      index: modifidIndex,
                      blocState: blocState,
                      thumbnailUrl: blocState.searchResultDataList[index]
                          .resultDetails.thumbnailMap["high"]["url"],
                      videoId: blocState
                          .searchResultDataList[index].resultDataId.videoId,
                      videoTitle: blocState
                          .searchResultDataList[index].resultDetails.title,
                      addlistButtonPressed: () {
                        addToWatchLater(blocState
                            .searchResultDataList[index].resultDataId.videoId,
                            blocState
                            .searchResultDataList[index].resultDetails.title
                            
                            );
                        PageSearchResults.isWatchLaterListNotifierSearchVideos
                            .notifyListeners();
                      },
                      isWatchLaterAdded:
                          isWatchLaterListVideos[modifidIndex] ?? false,
                    ),
                  );
  }
}
