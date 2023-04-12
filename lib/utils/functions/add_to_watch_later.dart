import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/functions/printing.dart';

// addToWatchLater(String? videoId, String? videoTitle) {
//   bool? isContains = false;
//   if (videoId != null) {
//     for (var element in watchLaterList) {
//       if (element[0] == videoId) {
//         isContains = true;
//         break;
//       }
//     }
//     if (isContains == false) {
//       watchLaterList.add([videoId, videoTitle ?? "No title $videoId"]);
//       printing("added $videoId");
//     } else {
//       for(int index =0; index<watchLaterList.length;index++){
//         if(watchLaterList[index][0] == videoId){
//          var removedItem = watchLaterList.removeAt(index);
//       printing("Remove $removedItem $videoId");
//         }
//       }
//     }
//   } else {
//     printing("Connot add to Watch later list");
//   }
// }

addToWatchLater(String? videoId, String? videoTitle) {
  bool isContains = false;
  if (videoId != null) {
    for (var element in watchLatervideoIdList) {
      if (element == videoId) {
        isContains = true;
        break;
      }
    }
    if (isContains == false) {
      watchLatervideoIdList.add(videoId);
      watchLatervideoTitleList.add(videoTitle ?? "No title $videoId");
      printing("added $videoId, $videoTitle");
    } else {
      for (int index = 0; index < watchLatervideoIdList.length; index++) {
        if (watchLatervideoIdList[index] == videoId) {
          var removedItemVideoId = watchLatervideoIdList.removeAt(index);
          var removedItemVideoTitle = watchLatervideoTitleList.removeAt(index);
          printing("Remove $removedItemVideoId, $removedItemVideoTitle");
        }
      }
    }
  } else {
    printing("Connot add to Watch later list");
  }
}

