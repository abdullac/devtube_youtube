import 'package:devtube_sample/core/models/home/videos/video_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'videos_data.freezed.dart';
part 'videos_data.g.dart';

@freezed
class VideosData with _$VideosData {
  factory VideosData({
    @JsonKey(name: "id") required String? videoId,
    @JsonKey(name: "snippet") required VideoDetails? videoDetails,
  }) = _VideosData;

  factory VideosData.fromJson(Map<String, dynamic> json) =>
      _$VideosDataFromJson(json);
}
