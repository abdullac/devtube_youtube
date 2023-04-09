import 'package:devtube_sample/ui/pages/settings_page/utils/priority.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/add_priority.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/priority_item.dart';
import 'package:flutter/material.dart';

class Priority extends StatelessWidget {
  const Priority({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: const Text("Priority"),
      children: [
        AddPriority(),
        const PriorityWidget(),
      ],
    );
  }
}

class PriorityWidget extends StatelessWidget {
  const PriorityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: priorityModelList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => PriorityItem(index: index),
    );
  }
}
