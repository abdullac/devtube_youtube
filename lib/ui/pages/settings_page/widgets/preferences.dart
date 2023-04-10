import 'package:devtube_sample/ui/pages/settings_page/utils/constants.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/preferences_item.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Preferences"),
      children: [
        PreferencesItem(
          expansionTitle: "Tools",
          toolOrProduct: ToolOrProduct.tool,
          namesListNotifier: PreferencesItemListView.toolsListViewNotifier,
        ),
        PreferencesItem(
          expansionTitle: "Products",
          toolOrProduct: ToolOrProduct.product,
          namesListNotifier: PreferencesItemListView.productListviewNotifier,
        ),
      ],
    );
  }
}



class AddToolOrProduct extends StatelessWidget {
  final ToolOrProduct toolOrProduct;
  final ValueNotifier<List<String>> namesListNotifier;
  AddToolOrProduct({
    super.key,
    required this.toolOrProduct,
    required this.namesListNotifier,
  });

  final TextEditingController addToolOrProductEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      height: 60,
      width: double.infinity,
      child: ListTile(
        title: TextField(
          controller: addToolOrProductEditingController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // AddToolOrProduct button
            if (addToolOrProductEditingController.text.isNotEmpty) {
              namesListNotifier.value
                  .add(addToolOrProductEditingController.text);
              namesListNotifier.notifyListeners();
            } else {
              printing("please fill");
            }
          },
          child: const Text("Add"),
        ),
      ),
    );
  }
}
