List<PriorityModel> priorityModelList = [
  PriorityModel("example0", true),
  // PriorityModel("example1", true),
  // PriorityModel("example2", false),
  // PriorityModel("example3", false),
  // PriorityModel("example4", true),
];
List<PriorityModel> newPriorityModelList = [];

class PriorityModel {
  String priorityTitle;
  bool priorityBool;

  PriorityModel(
    this.priorityTitle,
    this.priorityBool,
  );
}
