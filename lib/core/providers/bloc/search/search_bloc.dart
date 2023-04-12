import 'package:bloc/bloc.dart';
import 'package:devtube_sample/core/models/search/search_results/searh_result_model.dart';
import 'package:devtube_sample/core/services/i_facades/search/search_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchFacade searchFacade;
  SearchBloc(this.searchFacade) : super(SearchState.initial()) {
    on<Search>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
        // searchResultData: null,
        searchResultDataList: [],
        searchShortsListResults: [],
        searchedWord: event.searchWord,
      ));
      List<SearchResultData?> searchListResults = await searchFacade
          .searchListResult(event.searchWord, event.filterPriorityList);
      List<SearchResultData?> searchShortsListResults =
          await searchFacade.searchShortsListResult(event.searchWord);
      emit(state.copyWith(
        isLoading: false,
        isError: false,
        searchResultDataList: searchListResults,
        searchShortsListResults: searchShortsListResults,
        searchedWord: event.searchWord,
      ));
    });
  }
}
