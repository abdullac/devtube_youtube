import 'package:freezed_annotation/freezed_annotation.dart';
part 'searh_result_model.freezed.dart';
part 'searh_result_model.g.dart';

@freezed
class SearchResultData with _$SearchResultData {
  const factory SearchResultData({
    @JsonKey(name: "id") required SearhResultVideoId? resultDataId,
    @JsonKey(name: "snippet") required SearchResultDetails? resultDetails,
  }) = _SearchResultData;

  factory SearchResultData.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDataFromJson(json);
}

/// SearhResultVideoId
@freezed
class SearhResultVideoId with _$SearhResultVideoId {
  const factory SearhResultVideoId({
    @JsonKey(name: "videoId") required String? videoId,
  }) = _searhResultVideoId;

  factory SearhResultVideoId.fromJson(Map<String, dynamic> json) =>
      _$SearhResultVideoIdFromJson(json);
}

/// SearchResultDetails
@freezed
class SearchResultDetails with _$SearchResultDetails {
  const factory SearchResultDetails({
    @JsonKey(name: "channelId") required String? channelId,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "description") required String? description,
    @JsonKey(name: "thumbnails") required Map<String, dynamic>? thumbnailMap,
    @JsonKey(name: "channelTitle") required String? channelTitle,
  }) = _SearchResultDetails;

  factory SearchResultDetails.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDetailsFromJson(json);
}
