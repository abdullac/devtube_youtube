import 'package:devtube_sample/ui/pages/settings_page/utils/constants.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/preferences.dart';
import 'package:flutter/material.dart';



class PreferencesItem extends StatelessWidget {
  final String expansionTitle;
  final ToolOrProduct toolOrProduct;
  final ValueNotifier<List<String>> namesListNotifier;
  const PreferencesItem({
    super.key,
    required this.expansionTitle,
    required this.toolOrProduct,
    required this.namesListNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(expansionTitle, textAlign: TextAlign.center),
      children: [
        AddToolOrProduct(
          toolOrProduct: toolOrProduct,
          namesListNotifier: namesListNotifier,
        ),
        PreferencesItemListView(
          namesListNotifier: namesListNotifier,
        ),
      ],
    );
  }
}


class PreferencesItemListView extends StatelessWidget {
  final ValueNotifier<List<String>> namesListNotifier;
  const PreferencesItemListView({
    super.key,
    required this.namesListNotifier,
  });

  static var productListviewNotifier = ValueNotifier(productsNamesList);
  static var toolsListViewNotifier = ValueNotifier(toolsNamesList);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: namesListNotifier,
        builder: (context, newValue, _) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: newValue.length,
            itemBuilder: (context, index) => PreferencesItemListTile(
              index: index,
              namesList: newValue,
              namesListNotifier: namesListNotifier,
            ),
          );
        });
  }
}

class PreferencesItemListTile extends StatelessWidget {
  final int index;
  final List<String> namesList;
  final ValueNotifier<List<String>> namesListNotifier;
  const PreferencesItemListTile({
    super.key,
    required this.index,
    required this.namesList,
    required this.namesListNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(namesList[index]),
      trailing: IconButton(
          onPressed: () {
            // delete products button
            namesList.removeAt(index);
            namesListNotifier.notifyListeners();
          },
          icon: const Icon(Icons.delete)),
    );
  }
}
