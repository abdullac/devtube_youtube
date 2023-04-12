import 'package:devtube_sample/core/models/home/videos/videos_data.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/functions/add_to_watch_later.dart';
import 'package:flutter/material.dart';

// void clearAndAddIsWatchLaterList(
//   List<VideosData?> videoDataList,
//   ValueNotifier<List<bool?>> isWatchLaterListNotifier,
// ) {
//   isWatchLaterListNotifier.value.clear();
//   for (int index = 0; index < videoDataList.length; index++) {
//     var videosDataTemp = videoDataList[index];
//     if (videosDataTemp != null || videosDataTemp!.videoId != null) {
//       if (watchLaterList.isNotEmpty) {
//         for (var element in watchLaterList) {
//           isWatchLaterListNotifier.value
//               .add(element[0] == "${videosDataTemp.videoId}");
//         }
//       } else {
//         isWatchLaterListNotifier.value.add(false);
//       }
//     } else {
//       isWatchLaterListNotifier.value.add(null);
//     }
//   }
//   print("QQQQ ${isWatchLaterListNotifier.value}");
// }

// void clearAndAddIsWatchLaterList(
//   List<VideosData?> videoDataList,
//   ValueNotifier<List<bool?>> isWatchLaterListNotifier,
// ) {
//   isWatchLaterListNotifier.value.clear();
//   for (var elementVideoData in videoDataList) {
//     for (var elementWatchLater in watchLatervideoIdList) {
//       if (elementVideoData != null) {
//         isWatchLaterListNotifier.value
//             .add(elementWatchLater == elementVideoData.videoId);
//       }
//     }
//   }
//   print("QQQQ ${isWatchLaterListNotifier.value}");
// }

void clearAndAddIsWatchLaterList(
  List<VideosData?> videoDataList,
  ValueNotifier<List<bool?>> isWatchLaterListNotifier,
) {
  isWatchLaterListNotifier.value.clear();

  List<String?> videoDataIdList = [];
  videoDataList.forEach((e) {
    if (e != null) {
      videoDataIdList.add(e.videoId);
    }
  });
  for (var element in videoDataIdList) {
    if (watchLatervideoIdList.contains(element)) {
      isWatchLaterListNotifier.value.add(true);
    } else {
      isWatchLaterListNotifier.value.add(false);
    }
  }

  // for (var elementVideoData in videoDataList) {
  //   for (var elementWatchLater in watchLatervideoIdList) {
  //     if (elementVideoData != null) {
  //       isWatchLaterListNotifier.value
  //           .add(elementWatchLater == elementVideoData.videoId);
  //     }
  //   }
  // }
  print(isWatchLaterListNotifier.value.length);
  // print("QQQQ ${isWatchLaterListNotifier.value}");
}
