import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/shared/widgets/video_card.dart';
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
    // index = (index + 1) % 3 == 0 ?
    // int modifidIndex = (index - (index / 3).toInt());
    int modifidIndex = (index - index ~/ 3);
    // print("index $index, modifiedIndex $modifidIndex");
    // print(index-(index/3).toInt());
    print("serchedWord ${blocState.searchedWord}");
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
                : Container(
                    height: size.height * 40 / 100,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: VideoCard(
                      width: double.infinity,
                      height: double.infinity,
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
