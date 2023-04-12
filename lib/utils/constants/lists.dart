import 'package:devtube_sample/core/services/hive/hive_crud.dart';
import 'package:devtube_sample/ui/pages/settings_page/utils/settings_constants.dart';

List<String> channelIdList = [];

// List<List<String>> watchLaterList = [];
List<String> watchLatervideoIdList = [];
List<String> watchLatervideoTitleList = [];


List<String> filterItemSelectedList = [];

List<PriorityModel> priorityModelList = [
  PriorityModel("Charger", true),
  PriorityModel("ChatGPT", true),
];

List<PriorityModel> newPriorityModelList = [];

///  Hive
// Future<void> newPriorityModelListHive(BoxCrud boxCrud) async {
//   String keyName = "newprioritylist";
//   if (boxCrud == BoxCrud.put) {
//     await saveToBox(keyName, newPriorityModelList);
//   } else if (boxCrud == BoxCrud.get) {
//     newPriorityModelList = await readFromBox(keyName);
//   } else if (boxCrud == BoxCrud.delete) {
//     clearBox(keyName);
//   }
// }

List<String> productsNamesList = [
  "smartphone",
  "Camera",
];

List<String> toolsNamesList = [
  "PC",
  "cpu",
];

List<String> priorityAndNamesLst() {
  List<String> priorityAndNamesLstTemp = [];
  for (var element in newPriorityModelList) {
    priorityAndNamesLstTemp.add(element.priorityTitle);
  }
  priorityAndNamesLstTemp.addAll(productsNamesList);
  priorityAndNamesLstTemp.addAll(toolsNamesList);
  return priorityAndNamesLstTemp;
}
