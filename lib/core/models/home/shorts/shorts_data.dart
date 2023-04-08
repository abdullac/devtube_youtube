import 'package:freezed_annotation/freezed_annotation.dart';
part 'shorts_data.freezed.dart';
part 'shorts_data.g.dart';

@freezed
class ShortsData with _$ShortsData {
  const factory ShortsData({
    @JsonKey(name: "videoId") required String? videoId,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "thumbnails") required List<dynamic>? thumbnailUrlList,
    @JsonKey(name: "viewCount") required int? viewCount,
    @JsonKey(name: "duration") required String? duration,
  }) = _ShortsData;

  factory ShortsData.fromJson(Map<String, dynamic> json) =>
      _$ShortsDataFromJson(json);
}
