import 'package:devtube_sample/ui/pages/settings_page/utils/settings_constants.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/preferences_item.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Preferences"),
      children: [
        /// preferences sections
        PreferencesItems(
          expansionTitle: "Tools",
          toolOrProduct: ToolOrProduct.tool,
          namesListNotifier: PreferencesItemListView.toolsListViewNotifier,
        ),
        PreferencesItems(
          expansionTitle: "Products",
          toolOrProduct: ToolOrProduct.product,
          namesListNotifier: PreferencesItemListView.productListviewNotifier,
        ),
      ],
    );
  }
}


