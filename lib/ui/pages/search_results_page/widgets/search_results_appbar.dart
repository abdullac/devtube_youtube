import 'package:devtube_sample/ui/shared/widgets/util_buttons.dart';
import 'package:devtube_sample/utils/functions/searchpage_appbar_buttons.dart';
import 'package:devtube_sample/utils/functions/set_app_colors.dart';
import 'package:flutter/material.dart';

class SearchResultsAppBar extends StatelessWidget {
  const SearchResultsAppBar({
    super.key,
  });

  static TextEditingController searchEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: normalAreaColor(),
      title: TextField(
        controller: searchEditingController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
        ),
      ),
      actions: [
        UtilIconButtons(
          searhButtonPressed: () {
            // searhButtonPressed
            searhButtonPressed(context);
          },
          filterButtonPressed: () {
            // filterButtonPressed
            filterButtonPressed(context);
          },
        )
      ],
    );
  }
}

