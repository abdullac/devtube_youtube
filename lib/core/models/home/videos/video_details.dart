import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_details.freezed.dart';
part 'video_details.g.dart';

@freezed
class VideoDetails with _$VideoDetails {
  factory VideoDetails({
    // @JsonKey(name: "id") required String? videoId,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "description") required String? description,
    @JsonKey(name: "thumbnails") required Map<String, dynamic>? thumbnails,
    @JsonKey(name: "tags") required List<dynamic>? tagsList,
    @JsonKey(name: "categoryId") required String? categoryId,
    @JsonKey(name: "channelTitle") required String? channelTitle,
    @JsonKey(name: "channelId") required String? channelId,
  }) = _VideoDetails;

  //  factory VideoDetails.item({
  //   required Map<String, dynamic> videoSnippets,
  //   // required String videoId,
  // }) {
  //   VideoDetails VideoDetails = VideoDetails.fromJson(videoSnippets);
  //   return VideoDetails;
  // }

  factory VideoDetails.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailsFromJson(json);
}
