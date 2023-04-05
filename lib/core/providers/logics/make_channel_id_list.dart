import 'package:devtube_sample/main.dart';

void makeChannelIdList(videosDataList) {
  if (channelIdList.length > 1) {
    channelIdList.removeRange(0, channelIdList.length);
  }
  videosDataList as List;
  for (var element in videosDataList) {
    if (element != null &&
        element["snippet"] != null &&
        element["snippet"]["channelId"] != null) {
      channelIdList.add(element["snippet"]["channelId"]);
    }
  }
}
