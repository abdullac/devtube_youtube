import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_filter_widget.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_result_item.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_results_appbar.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/constants/proiders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

ValueNotifier<List<String>> filterItemSelectNotifier =
    ValueNotifier(filterItemSelectedList);

class PageSearchResults extends StatelessWidget {
  const PageSearchResults({Key? key}) : super(key: key);

  static var filterWidgetNotifier = ValueNotifier(true);
  static ValueNotifier<List<bool?>> isWatchLaterListNotifierSearchVideos =
      ValueNotifier([]);
  static ValueNotifier<List<bool?>> isWatchLaterListNotifierSearchShorts =
      ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callSearch(context);
    });
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 60),
            child: SearchResultsAppBar()),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return ValueListenableBuilder(
                valueListenable: filterWidgetNotifier,
                builder: (context, newFilterWidgetValue, _) {
                  return newFilterWidgetValue == false
                      ? const FilterWidget()
                      : state.isLoading == true
                          ? const Center(
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : state.searchResultDataList.isEmpty
                              ? Center(
                                  child: Text(state.searchedWord == null
                                      ? "Not availabe search results"
                                      : "Not availabe results for '${state.searchedWord}'"),
                                )
                              : ValueListenableBuilder(
                                  valueListenable:
                                      isWatchLaterListNotifierSearchVideos,
                                  builder: (context, newValueVideos, _) {
                                    newValueVideos =
                                        state.searchResultDataList.map((e) {
                                      if (e != null ||
                                          e!.resultDataId != null) {
                                        return watchLatervideoIdList
                                            .contains(e.resultDataId);
                                      } else {
                                        return null;
                                      }
                                    }).toList();
                                    return ValueListenableBuilder(
                                        valueListenable:
                                            isWatchLaterListNotifierSearchShorts,
                                        builder: (context, newValueShorts, _) {
                                          newValueShorts = state
                                              .searchShortsListResults
                                              .map((e) {
                                            if (e != null ||
                                                e!.resultDataId != null) {
                                              return watchLatervideoIdList
                                                  .contains(e.resultDataId);
                                            } else {
                                              return null;
                                            }
                                          }).toList();
                                          return ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: state
                                                .searchResultDataList.length,
                                            itemBuilder: (context, index) =>
                                                SearchResultItem(
                                              index: index,
                                              size: screenSize,
                                              blocState: state,
                                              isWatchLaterListVideos:
                                                  newValueVideos,
                                              isWatchLaterListShorts:
                                                  newValueShorts,
                                            ),
                                          );
                                        });
                                  });
                });
          },
        ),
      ),
    );
  }
}






// List<String> priorityList() {
//   List<String> priorityListTemp = [];
//   for (var element in newPriorityModelList) {
//     priorityListTemp.add(element.priorityTitle);
//   }
//   return priorityListTemp;
// }