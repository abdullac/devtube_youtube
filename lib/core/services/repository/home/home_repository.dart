import 'dart:math';

import 'package:devtube_sample/core/models/home/shorts/shorts_data.dart';
import 'package:devtube_sample/core/models/home/videos/videos_data.dart';
import 'package:devtube_sample/core/providers/logics/make_channel_id_list.dart';
import 'package:devtube_sample/core/providers/logics/set_url_channel_id.dart';
import 'package:devtube_sample/core/services/facades/home/home_facade.dart';
import 'package:devtube_sample/core/services/links/uri.dart';
import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeFacade)
class HomeRepository implements HomeFacade {
  /// getShortsData
  @override
  Future<ShortsData?> getShortsData() async {
    try {
      await setUrlChannelId();
      final response =
          await Dio(BaseOptions()).get(Url.shortsBaseUrl + Url.channelId);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final shortsDataList = (response.data["items"][0]["shorts"]);
        final int shortsDataListLength = (shortsDataList as List).length;
        final int randomNumber = Random().nextInt(shortsDataListLength);
        ShortsData convertToShortsData =
            ShortsData.fromJson(shortsDataList[randomNumber]);
        return convertToShortsData;
      } else {
        printing("getShortsData statusCode is not 200/201");
        return null;
      }
    } catch (e) {
      printing("getShortsData cache e $e");
      return null;
    }
  }

  /// getVideosData
  @override
  Future<VideosData?> getVideosData() async {
    try {
      // final response =
      //     await Dio(BaseOptions()).get(Url.baseUrl + Url.videosEndPoint);
      // if (response.statusCode == 200 || response.statusCode == 201) {
      //   final videosDataList = (response.data["items"]);
      final videosDataList = await getVideosDataList();
      if (videosDataList != null) {
        // makeChannelIdList(videosDataList);
        final int videosDataListLength = (videosDataList).length;
        final int randomNumber = Random().nextInt(videosDataListLength);
        if ((videosDataList[randomNumber]) != null) {
          VideosData convertToVideosData =
              // VideosData.fromJson(videosDataList[randomNumber]);
              (videosDataList[randomNumber]!);
        return convertToVideosData;
        }else{
          printing( "getVideosData videosData Empty");
          return null;
        }
      }
      else {
      printing("getVideosData videosData List null");
      return null;
      }
    } catch (e) {
      printing("getVideosData cache e $e");
      return null;
    }
  }

  /// getVideosDataList
  @override
  Future<List<VideosData?>?> getVideosDataList() async {
    List<VideosData> videsDataList = [];
    try {
      final response =
          await Dio(BaseOptions()).get(Url.baseUrl + Url.videosEndPoint);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final videosDataList = (response.data["items"]);
        makeChannelIdList(videosDataList);
        videosDataList as List;
        for (var element in videosDataList) {
          videsDataList.add(VideosData.fromJson(element));
        }
        return videsDataList;
      } else {
        printing("getVideosDataList statusCode is not 200/201");
        return null;
      }
    } catch (e) {
      printing("getVideosDataList cache e $e");
      return null;
    }
  }
}



// @LazySingleton(as: HomeFacade)
// class HomeRepository implements HomeFacade {
//   @override
//   dioGet() async {
//   final responsse = await Dio(
//     BaseOptions(
//       baseUrl: Api.baseUrl + Api.searchByCategoryIdEntPoint,
//     ),
//   ).get("");
//   print(responsse.data);
// }

// }

// dioGet() async {
//   final responsse = await Dio(
//     BaseOptions(
//       baseUrl: Api.baseUrl + Api.searchByCategoryIdEntPoint,
//     ),
//   ).get("");
//   print(responsse.data);
// }
