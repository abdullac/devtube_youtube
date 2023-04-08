import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/shared/widgets/util_buttons.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
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
      backgroundColor: Colors.grey,
      title: TextField(
        controller: searchEditingController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
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
            filterButtonPressed();
          },
        )
      ],
    );
  }
}

void searhButtonPressed(BuildContext context) {
  printing("search button bressed");
  // BlocProvider.of<SearchBloc>(context).add(
  //     Search(searchWord: SearchResultsAppBar.searchEditingController.text));
  callSearch(context);
}

filterButtonPressed() {
  printing("filter button bressed");
}
