import 'dart:math';

import 'package:devtube_sample/core/models/search/search_results/searh_result_model.dart';
import 'package:devtube_sample/core/services/i_repository/search/search_repository.dart';
import 'package:devtube_sample/core/services/keys/api_key.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:dio/dio.dart';

Future<List<SearchResultData?>> makeListOfSearchResultData(
    List<String> filterPriorityList, String searchQuery) async {
  List<SearchResultData> listOfSearchReasultData = [];
  try {
    for (int index = 0; index < filterPriorityList.length + 1; index++) {
      if (filterPriorityList.isEmpty) {
        /// search query is not changed/modified
        if (searchQuery == "" || searchQuery.isEmpty || searchQuery == null) {
          List<String> wordList = [
            "programming",
            "coding",
            "computer",
            "smartphone",
            "technology",
          ];
          searchQuery = wordList[Random().nextInt(wordList.length)];
        }
      }
      if (index == 0) {
        for (var element in filterPriorityList) {
          searchQuery = "$searchQuery%20$element";
          String searchEndPoint =
              "search?part=snippet&maxResults=30&q=$searchQuery&key=$apiKey";
          try {
            return await SearchRepository.getListOfSearchResultData(
                searchEndPoint, listOfSearchReasultData);
          } on DioError catch (e) {
            printing("search error with serch priorityList1 ${e.response}");
            return [];
          } catch (e) {
            printing("search error with serch priorityList1 catch $e");
          }
        }
      } else {
        searchQuery = "$searchQuery%20${filterPriorityList[index + 1]}";
      }
      String searchEndPoint =
          "search?part=snippet&maxResults=30&q=$searchQuery&key=$apiKey";
      try {
        return await SearchRepository.getListOfSearchResultData(
            searchEndPoint, listOfSearchReasultData);
      } on DioError catch (e) {
        printing("search error with serch priorityList ${e.response}");
        return [];
      } catch (e) {
        printing("search error with serch priorityList catch $e");
      }
    }
    return listOfSearchReasultData;
  } on DioError catch (e) {
    printing(e.response);
    return [];
  } catch (e) {
    printing("SearchRepository catch $e");
    return [];
  }
}
