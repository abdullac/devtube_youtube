import 'package:devtube_sample/utils/constants/lists.dart';

List<String> priorityList() {
  List<String> priorityListTemp = [];
  for (var element in newPriorityModelList) {
    priorityListTemp.add(element.priorityTitle);
  }
  return priorityListTemp;
}
