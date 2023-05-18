import 'package:devtube_sample/core/services/hive/hive_crud.dart';
import 'package:devtube_sample/ui/pages/settings_page/utils/settings_constants.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/color_theme_selection.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/functions/set_app_colors.dart';
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
              /// priority item onTap
              priorityModelList.removeAt(index);
              priorityModel.priorityBool =
                  priorityModel.priorityBool == true ? false : true;
              priorityModelList.add(priorityModel);
              priorityNotifier.notifyListeners();
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
            child: PriorityItemTitle(priorityModel: priorityModel),
          );
        });
  }
}

class PriorityItemTitle extends StatelessWidget {
  const PriorityItemTitle({
    super.key,
    required this.priorityModel,
  });

  final PriorityModel priorityModel;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ColorThemeSeletion.selectColorThemeNotifier,
        builder: (context, newValue, _) {
          return Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: priorityModel.priorityBool == true
                    ? normalAreaColor()
                    : maxLightAreaColor(),
                borderRadius: const BorderRadius.all(Radius.circular(5))),

            /// title
            child: Text(priorityModel.priorityTitle),
          );
        });
  }
}
