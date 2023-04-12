import 'package:devtube_sample/ui/pages/settings_page/widgets/add_priority.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/color_theme_selection.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/priority_item.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/functions/set_app_colors.dart';
import 'package:flutter/material.dart';

class Priority extends StatelessWidget {
  const Priority({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ColorThemeSeletion.selectColorThemeNotifier,
      builder: (context,newValue,_) {
        return ExpansionTile(
          textColor: darkAreaColor(),
          initiallyExpanded: true,
          title: const Text("Priority"),
          children: [
            AddPriority(),
            const PriorityWidget(),
          ],
        );
      }
    );
  }
}

class PriorityWidget extends StatelessWidget {
  const PriorityWidget({super.key});

  static var priorityListViewNotifier = ValueNotifier(priorityModelList);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: priorityListViewNotifier,
      builder: (context,newValue,_) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: newValue.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => PriorityItem(index: index),
        );
      }
    );
  }
}
