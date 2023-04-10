import 'package:devtube_sample/ui/pages/settings_page/utils/constants.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/color_theme_selection.dart';
import 'package:flutter/material.dart';

class PriorityItem extends StatelessWidget {
  final int index;
  const PriorityItem({
    super.key,
    required this.index,
  });

  static var priorityNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    PriorityModel priorityModel = PriorityModel(
        priorityModelList[index].priorityTitle,
        priorityModelList[index].priorityBool);
    return ValueListenableBuilder(
        valueListenable: priorityNotifier,
        builder: (context, notifierValue, _) {
          return InkWell(
            onTap: () {
              // priority item onTap

              priorityModelList.removeAt(index);
              priorityModel.priorityBool =
                  priorityModel.priorityBool == true ? false : true;
              priorityModelList.add(priorityModel);
              priorityNotifier.notifyListeners();
              newPriorityModelList.clear();
              for (var element in priorityModelList) {
                if (element.priorityBool == true) {
                  newPriorityModelList.add(element);
                }
              }
              for (var element in newPriorityModelList) {
                print(
                    "newPrty ${element.priorityTitle}, ${element.priorityBool}");
              }
            },
            child: Container(
              margin: const EdgeInsets.all(3),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: priorityModel.priorityBool == true
                      ? normalAreaColor(selectedThemeColor)
                      : maxLightAreaColor(selectedThemeColor),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Text(priorityModel.priorityTitle),
            ),
          );
        });
  }
}