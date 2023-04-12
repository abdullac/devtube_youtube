import 'package:devtube_sample/core/models/home/videos/video_details.dart';
import 'package:devtube_sample/core/models/home/videos/videos_data.dart';
import 'package:devtube_sample/ui/pages/settings_page/utils/settings_constants.dart';
import 'package:devtube_sample/utils/constants/lists.dart';

void createVideoListWithPriority(
    VideosData videoData,
    List<VideosData> listOfVidesDataList,
    List<VideosData> listOfVidesDataListNoPriority) {
  VideoDetails? videoDetails = videoData.videoDetails;
  String? channelTitle = videoDetails!.channelTitle;
  String? description = videoDetails!.description;
  if (videoDetails != null && channelTitle != null || description != null) {
    for (var priorityOrNames in priorityAndNamesLst()) {
      if (channelTitle!.contains(priorityOrNames) ||
          description!.contains(priorityOrNames) ||
          channelTitle.contains(priorityOrNames.toLowerCase()) ||
          description.contains(priorityOrNames.toLowerCase()) ||
          channelTitle.contains(priorityOrNames.toUpperCase()) ||
          description.contains(priorityOrNames.toUpperCase())) {
        listOfVidesDataList.add(videoData);
      } else {
        listOfVidesDataListNoPriority.add(videoData);
      }
    }
    if (priorityAndNamesLst().isEmpty) {
      listOfVidesDataList.add(videoData);
    }
  }
}
