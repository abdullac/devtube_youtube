part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isError,
    // required SearchResultData? searchResultData,
    required List<SearchResultData?> searchResultDataList,
    required List<SearchResultData?> searchShortsListResults,
    required String? searchedWord,
  }) = _SearchState;
  factory SearchState.initial() {
    return const SearchState(
      isLoading: false,
      isError: false,
      // searchResultData: null,
      searchResultDataList: [],
      searchShortsListResults: [],
      searchedWord: null,
    );
  }
}
