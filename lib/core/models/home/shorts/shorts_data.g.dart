// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shorts_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShortsData _$$_ShortsDataFromJson(Map<String, dynamic> json) =>
    _$_ShortsData(
      videoId: json['videoId'] as String?,
      title: json['title'] as String?,
      thumbnailUrlList: json['thumbnails'] as List<dynamic>?,
      viewCount: json['viewCount'] as int?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$$_ShortsDataToJson(_$_ShortsData instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'title': instance.title,
      'thumbnails': instance.thumbnailUrlList,
      'viewCount': instance.viewCount,
      'duration': instance.duration,
    };
