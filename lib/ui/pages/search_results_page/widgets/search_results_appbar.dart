import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/search_filter_buttons.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsAppBar extends StatelessWidget {
  const SearchResultsAppBar({
    super.key,
  });

  static TextEditingController searchEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<SearchBloc>(context).add(
      //     Search(searchWord: SearchResultsAppBar.searchEditingController.text));
    });
    return AppBar(
      title: TextField(
        controller: searchEditingController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        SearchAndFilterButtons(
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

// searhButtonPressed() {
//   printing("search button bressed");
//   BlocProvider.of<SearchBloc>(context).add(
//       Search(searchWord: SearchResultsAppBar.searchEditingController.text));
// }

void searhButtonPressed(BuildContext context) {
  printing("search button bressed");
  // BlocProvider.of<SearchBloc>(context).add(
  //     Search(searchWord: SearchResultsAppBar.searchEditingController.text));
}

filterButtonPressed() {
  printing("filter button bressed");
}
