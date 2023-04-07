import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/shared/widgets/video_card.dart';
import 'package:flutter/material.dart';

/// SearchVideosResultItem
class SearchVideosResultItem extends StatelessWidget {
  final int index;
  final dynamic blocState;
  const SearchVideosResultItem({
    super.key,
    required this.index,
    this.blocState,
  });

  @override
  Widget build(BuildContext context) {
    // index = (index + 1) % 3 == 0 ?
    int modifidIndex = (index - (index / 3).toInt());
    // print("index $index, modifiedIndex $modifidIndex");
    // print(index-(index/3).toInt());
    print("serchedWord ${blocState.searchedWord}");
    return Container(
      height: null,
      width: null,
      color: Colors.green,
      child: VideoCard(
        width: double.infinity,
        height: 300,
        index: modifidIndex,
        blocState: blocState,
        // thumbnailUrl: blocState.searchResultDataList[index].resultDetails
        //     .thumbnailMap["high"]["url"],
        thumbnailUrl: imageHorizontal,
        // videoId: blocState.searchResultDataList[index].resultDataId.videoId,
        videoId: "aaaaaaaaaa",
        // videoTitle: blocState.searchResultDataList[index].resultDetails.title,
        videoTitle: imageTitle,
      ),
    );
  }
}
