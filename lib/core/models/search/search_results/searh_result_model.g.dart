// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searh_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResultData _$$_SearchResultDataFromJson(Map<String, dynamic> json) =>
    _$_SearchResultData(
      resultDataId: json['id'] == null
          ? null
          : SearhResultVideoId.fromJson(json['id'] as Map<String, dynamic>),
      resultDetails: json['snippet'] == null
          ? null
          : SearchResultDetails.fromJson(
              json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchResultDataToJson(_$_SearchResultData instance) =>
    <String, dynamic>{
      'id': instance.resultDataId,
      'snippet': instance.resultDetails,
    };

_$_searhResultVideoId _$$_searhResultVideoIdFromJson(
        Map<String, dynamic> json) =>
    _$_searhResultVideoId(
      videoId: json['videoId'] as String?,
    );

Map<String, dynamic> _$$_searhResultVideoIdToJson(
        _$_searhResultVideoId instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
    };

_$_SearchResultDetails _$$_SearchResultDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_SearchResultDetails(
      channelId: json['channelId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnailMap: json['thumbnails'] as Map<String, dynamic>?,
      channelTitle: json['channelTitle'] as String?,
    );

Map<String, dynamic> _$$_SearchResultDetailsToJson(
        _$_SearchResultDetails instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnailMap,
      'channelTitle': instance.channelTitle,
    };
