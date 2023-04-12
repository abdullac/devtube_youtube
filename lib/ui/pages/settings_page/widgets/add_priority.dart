import 'package:devtube_sample/ui/pages/settings_page/utils/settings_constants.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/priority.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/priority_item.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:devtube_sample/utils/functions/set_app_colors.dart';
import 'package:flutter/material.dart';

class AddPriority extends StatelessWidget {
  AddPriority({super.key});

  final TextEditingController addPriorityEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightAreaColor(),
      height: 60,
      width: double.infinity,
      child: ListTile(
        title: TextField(
          controller: addPriorityEditingController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // add priority
            if (addPriorityEditingController.text.isNotEmpty) {
              priorityModelList.add(
                PriorityModel(addPriorityEditingController.text, true),
              );
              newPriorityModelList.clear();
              for (var element in priorityModelList) {
                if (element.priorityBool == true) {
                  newPriorityModelList.add(element);
                }
              }
              print("newPrty {$newPriorityModelList}");
            } else {
              printing("please fill");
            }
            PriorityWidget.priorityListViewNotifier.notifyListeners();
            PriorityItem.priorityNotifier.notifyListeners();
          },
          child: const Text("Add"),
        ),
      ),
    );
  }
}
