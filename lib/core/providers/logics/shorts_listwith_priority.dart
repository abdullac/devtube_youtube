import 'package:devtube_sample/core/models/home/shorts/shorts_data.dart';
import 'package:devtube_sample/utils/constants/lists.dart';

void shortsListWithPriority(
      ShortsData shortsData,
      List<ShortsData?> listOfShortsData,
      List<ShortsData?> listOfShortsDataWithoutPriority) {
    String? shortsTitle = shortsData.title;
    if (shortsTitle != null) {
      for (var priorityOrNames in priorityAndNamesLst()) {
        if (shortsTitle.contains(priorityOrNames) ||
            shortsTitle.contains(priorityOrNames.toUpperCase()) ||
            shortsTitle.contains(priorityOrNames.toLowerCase())) {
          listOfShortsData.add(shortsData);
        } else {
          listOfShortsDataWithoutPriority.add(shortsData);
        }
      }
    }
    if (priorityAndNamesLst().isEmpty) {
      listOfShortsData.add(shortsData);
    }
    listOfShortsData.addAll(listOfShortsDataWithoutPriority);
  }