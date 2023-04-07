import 'package:devtube_sample/core/models/search/search_results/searh_result_model.dart';
import 'package:devtube_sample/core/services/i_facades/search/search_facade.dart';
import 'package:devtube_sample/core/services/keys/api_key.dart';
import 'package:devtube_sample/core/services/links/uri.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchFacade)
class SearchRepository implements SearchFacade {
  @override
  Future<List<SearchResultData?>> searchListResult(String searchQuery) async {
    String searchEndPoint = "search?part=snippet&q=$searchQuery&key=$apiKey";
    // Url.serchQuery = searchQuery;
    List<SearchResultData> listOfSearchReasultData = [];
    try {
      Response response =
          await Dio(BaseOptions()).get(Url.baseUrl + searchEndPoint);
      print("search-1 ${Url.baseUrl + searchEndPoint}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        List searchResultdataList = response.data["items"] as List;
        for (var element in searchResultdataList) {
          listOfSearchReasultData.add(SearchResultData.fromJson(element));
        }
        return listOfSearchReasultData;
      } else {
        print("searchListResult bad resp/requ");
        return [];
      }
    
    } on DioError catch (e){
        print(e.response);
        return [];
    }
     catch (e) {
      print("SearchRepository catch ${e}");
      return [];
    }
  }
}
