import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_results_appbar.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_shorts_resultitem.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_videos_resultitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageSearchResults extends StatelessWidget {
  const PageSearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 70),
            child: SearchResultsAppBar()),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return ListView.builder(
              // itemCount: state.searchResultDataList.length,
              itemCount: 10,
              itemBuilder: (context, index) => SearchResultItem(
                index: index,
                size: screenSize,
                blocState: state,
              ),
            );
          },
        ),
      ),
    );
  }
}

/// SearchResultItem
class SearchResultItem extends StatelessWidget {
  final int index;
  final Size size;
  final dynamic blocState;
  const SearchResultItem({
    super.key,
    required this.index,
    required this.blocState,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return (index + 1) % 3 != 0
        ? SearchVideosResultItem(
            index: index,
            size: size,
            blocState: blocState,
          )
        : SearchShortsResultsListView(
            size: size,
          );
  }
}
