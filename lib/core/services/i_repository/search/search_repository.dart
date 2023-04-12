import 'dart:math';
import 'package:devtube_sample/core/models/search/search_results/searh_result_model.dart';
import 'package:devtube_sample/core/providers/logics/make_listofsearchresult_data.dart';
import 'package:devtube_sample/core/services/i_facades/search/search_facade.dart';
import 'package:devtube_sample/core/services/keys/api_key.dart';
import 'package:devtube_sample/core/services/links/uri.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchFacade)
class SearchRepository implements SearchFacade {

  ///  searchListResult
  @override
  Future<List<SearchResultData?>> searchListResult(
    String searchQuery,
    List<String> filterPriorityList,
  ) async {
    return await makeListOfSearchResultData(filterPriorityList, searchQuery);
  }
  ///  getListOfSearchResultData
  static Future<List<SearchResultData?>> getListOfSearchResultData(
      String searchEndPoint,
      List<SearchResultData> listOfSearchReasultData) async {
    Response response =
        await Dio(BaseOptions()).get(Url.baseUrl + searchEndPoint);
    if (response.statusCode == 200 || response.statusCode == 201) {
      List searchResultdataList = response.data["items"] as List;
      for (var element in searchResultdataList) {
        listOfSearchReasultData.add(SearchResultData.fromJson(element));
      }
      return listOfSearchReasultData;
    } else {
      printing(" with serch priorityList, searchListResult bad resp/requ");
      return [];
    }
  }

  ///  searchShortsListResult
  @override
  Future<List<SearchResultData?>> searchShortsListResult(
      String searchQuery) async {
    searchQuery = "$searchQuery%20%23shorts";
    String searchEndPoint =
        "search?part=snippet&maxResults=30&q=$searchQuery&key=$apiKey";
    List<SearchResultData> listOfSearchReasultData = [];
    try {
      Response response =
          await Dio(BaseOptions()).get(Url.baseUrl + searchEndPoint);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List searchResultdataList = response.data["items"] as List;
        for (var element in searchResultdataList) {
          listOfSearchReasultData.add(SearchResultData.fromJson(element));
        }
        return listOfSearchReasultData;
      } else {
        printing("searchListResult bad resp/requ");
        return [];
      }
    } on DioError catch (e) {
      printing(e.response);
      return [];
    } catch (e) {
      printing("SearchRepository catch $e");
      return [];
    }
  }
}
