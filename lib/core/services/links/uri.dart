import 'dart:math';

import 'package:devtube_sample/core/services/keys/api_key.dart';
import 'package:devtube_sample/main.dart';

class Url {
  static const String baseUrl = "https://www.googleapis.com/youtube/v3/";
  static const String videosEndPoint =
      "videos?part=snippet&chart=mostPopular&key=$apiKey";
  static String serchQuery = "";
  // static String searchEndPoint =
  //     "search?part=snippet&q=$serchQuery&key=$apiKey";
  static String techScienceCategoryId = "28";
  static String educationCategoryId = "27";
  static String videosByCategoryEndPoint =
      "videos?part=snippet&chart=mostPopular&videoCategoryId=$techScienceCategoryId&key=$apiKey";
  static String searchByCategoryIdEntPoint =
      "search?part=snippet&q=$serchQuery&type=video&videoCategoryId=$techScienceCategoryId&key=$apiKey";
  static String channelId = "";
  static String shortsBaseUrl =
      "https://yt.lemnoslife.com/channels?part=shorts&id=";
}







/// videoCategoryId
// 27  Education
// 28 Science & Technology

// shorts "https://yt.lemnoslife.com/channels?part=shorts&id=UCX6OQ3DkcsbYNE6H8uQQuVA" channelId

//  static String channelId = "UCX6OQ3DkcsbYNE6H8uQQuVA";