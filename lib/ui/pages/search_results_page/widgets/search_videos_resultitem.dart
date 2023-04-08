import 'package:devtube_sample/ui/shared/widgets/video_card.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

/// SearchVideosResultItem
class SearchVideosResultItem extends StatelessWidget {
  final int index;
  final Size size;
  final dynamic blocState;
  const SearchVideosResultItem({
    super.key,
    required this.index,
    this.blocState,
    required this.size,
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
                  child: VideoCard(
                    width: double.infinity,
                    height: size.height,
                    isShadows: true,
                    index: modifidIndex,
                    blocState: blocState,
                    thumbnailUrl: blocState.searchResultDataList[index]
                        .resultDetails.thumbnailMap["high"]["url"],
                    // thumbnailUrl: imageHorizontal,
                    videoId: blocState
                        .searchResultDataList[index].resultDataId.videoId,
                    // videoId: "aaaaaaaaaa",
                    videoTitle: blocState
                        .searchResultDataList[index].resultDetails.title,
                    // videoTitle: imageTitle,
                  ),
                );
  }
}
