import 'package:devtube_sample/core/services/keys/api_key.dart';

class Url {
  static const String baseUrl = "https://www.googleapis.com/youtube/v3/";
  // static const String videosEndPoint =
  //     "videos?part=snippet&chart=mostPopular&maxResults=30&key=$apiKey";
  static const String videosEndPoint =
      "videos?part=snippet&chart=mostPopular&key=$apiKey&maxResults=50&videoCategoryId=28";
  static String serchQuery = "";
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


//  https://youtube.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&key=[ApiKey]&maxResults=30&videoCategoryId=28&pageToken=CAUQAA


//  https://youtube.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&maxResults=30&pageToken=CAUQAA&videoCategoryId=28&key=[YOUR_API_KEY]