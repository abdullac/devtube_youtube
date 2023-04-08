import 'package:devtube_sample/core/models/search/search_results/searh_result_model.dart';

abstract class SearchFacade {
  Future<List<SearchResultData?>> searchListResult(String searchWord);
  Future<List<SearchResultData?>> searchShortsListResult(String searchWord);
}
