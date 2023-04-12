import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_shorts_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// SearchShortsResultsListView
class SearchShortsResultsListView extends StatelessWidget {
  final int index;
  final Size size;
  final dynamic blocState;
  final List<bool?> isWatchLaterListShorts;
  const SearchShortsResultsListView({
    super.key,
    required this.size,
    required this.index,
    this.blocState,
    required this.isWatchLaterListShorts,
  });

  @override
  Widget build(BuildContext context) {
    int modifidIndex = (index - index ~/ 3);
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, shortsListviewState) {
        int shortsLength = shortsListviewState.searchShortsListResults.length;
        return SizedBox(
          height: size.height * 62.5 / 100,
          child: shortsListviewState.searchShortsListResults.isEmpty
              ? Center(
                  child: Text(
                      "Not available search results of '${shortsListviewState.searchedWord}' for shorts"),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shortsLength > modifidIndex
                      ? 2
                      : shortsLength < modifidIndex
                          ? 0
                          : shortsLength - (modifidIndex - 2),
                  itemBuilder: (context, shortsListviewIndex) =>
                      SearchShortsResultItem(
                    shortsListviewIndex: shortsListviewIndex,
                    size: size,
                    modifeidIndex: modifidIndex,
                    shortsBlocState: shortsListviewState,
                    isWatchLaterListShorts: isWatchLaterListShorts,
                  ),
                ),
        );
      },
    );
  }
}

