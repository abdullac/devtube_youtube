import 'package:freezed_annotation/freezed_annotation.dart';
part 'youtube_data.freezed.dart';
part 'youtube_data.g.dart';

@freezed
class ShortsData with _$ShortsData {
  const factory ShortsData({
    @JsonKey(name: "videoId") required String videoId,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "thumbnails")
        required List<Map<String, String>> thumbnailUrlList,
    @JsonKey(name: "viewCount") required int viewCount,
    @JsonKey(name: "duration") required String duration,
  }) = _YouTubeData;

  factory ShortsData.fromJson(Map<String, dynamic> json) =>
      _$ShortsDataFromJson(json);
}





///  ---  channel  ---
/// 
/// https://developers.google.com/youtube/v3/docs/channels/list?apix_params=%7B%22part%22%3A%5B%22snippet%22%5D%2C%22id%22%3A%5B%22UCX6OQ3DkcsbYNE6H8uQQuVA%22%5D%7D
/// 
///  channel id
///  channel title
///  channel description
///  channel thumbnails
/// 





/// 
///  ---  videos ---
/// 
///  title
///  description
///  thumbnails{{}}
///  tags {education}
///  categoryId
///  channelTitle
///  channelId
///  
/// 
/// 
/// 
/// 
/// 
/// 