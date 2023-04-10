class PriorityModel {
  String priorityTitle;
  bool priorityBool;
  PriorityModel(
    this.priorityTitle,
    this.priorityBool,
  );
}

enum ToolOrProduct {
  tool,
  product,
}

List<PriorityModel> newPriorityModelList = [];

List<PriorityModel> priorityModelList = [
  PriorityModel("Charger", true),
  PriorityModel("ChatGPT", true),
  // PriorityModel("example1", true),
  // PriorityModel("example2", false),
  // PriorityModel("example3", false),
  // PriorityModel("example4", true),
];

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
