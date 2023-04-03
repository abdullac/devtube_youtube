import 'package:devtube_sample/core/services/keys/api_key.dart';

class Api {
  static const String baseUrl = "https://www.googleapis.com/youtube/v3/";
  static const String videosEndPoint =
      "videos?part=snippet&chart=mostPopular&key=$apiKey";
  static String serchQuery = "";
  static String searchEndPoint =
      "search?part=snippet&q=$serchQuery&key=$apiKey";
  // static String videoCategoryId = "28";
  static String techScienceCategoryId = "28";
  static String educationCategoryId = "28";
  static String videosByCategoryEndPoint =
      "videos?part=snippet&chart=mostPopular&videoCategoryId=$techScienceCategoryId&key=$apiKey";
  static String searchByCategoryIdEntPoint =
      "search?part=snippet&q=$serchQuery&type=video&videoCategoryId=$techScienceCategoryId&key=$apiKey";
}







/// videoCategoryId
// 27  Education
// 28 Science & Technology