import 'package:devtube_sample/core/models/home/videos/video_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'videos_data.freezed.dart';
part 'videos_data.g.dart';

// @freezed
// class VideosData with _$VideosData {
//    factory VideosData({
//     @JsonKey(name: "id") required String? videoId,
//     @JsonKey(name: "title") required String title,
//     @JsonKey(name: "description") required String description,
//     @JsonKey(name: "thumbnails") required Map<dynamic, dynamic> thumbnails,
//     @JsonKey(name: "tags") required List<dynamic> tagsList,
//     @JsonKey(name: "categoryId") required String categoryId,
//     @JsonKey(name: "channelTitle") required String channelTitle,
//     @JsonKey(name: "channelId") required String channelId,
//   }) = _VideosData;

//    factory VideosData.item({
//     required Map<String, dynamic> videoSnippets,
//     // required String videoId,
//   }) {
//     VideosData videosData = VideosData.fromJson(videoSnippets);
//     return videosData;
//   }

//   factory VideosData.fromJson(Map<String, dynamic> json) =>
//       _$VideosDataFromJson(json);
// }


@freezed
class VideosData with _$VideosData {
   factory VideosData({
    @JsonKey(name: "id") required String? videoId,
    @JsonKey(name: "snippet") required VideoDetails? videoDetails,
    // @JsonKey(name: "title") required String title,
    // @JsonKey(name: "description") required String description,
    // @JsonKey(name: "thumbnails") required Map<dynamic, dynamic> thumbnails,
    // @JsonKey(name: "tags") required List<dynamic> tagsList,
    // @JsonKey(name: "categoryId") required String categoryId,
    // @JsonKey(name: "channelTitle") required String channelTitle,
    // @JsonKey(name: "channelId") required String channelId,
  }) = _VideosData;

  //  factory VideosData.item({
  //   required Map<String, dynamic> videoSnippets,
  //   // required String videoId,
  // }) {
  //   VideosData videosData = VideosData.fromJson(videoSnippets);
  //   return videosData;
  // }

  factory VideosData.fromJson(Map<String, dynamic> json) =>
      _$VideosDataFromJson(json);
}







/// 
///  ---  videos ---
/// 
///  videoId id
///   {
///  title
///  description
///  thumbnails{{}}
///  tags {education}
///  categoryId
///  channelTitle
///  channelId
///   }
///  
/// 
/// 
/// 
/// 
/// 
/// 