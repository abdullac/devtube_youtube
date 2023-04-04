// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YouTubeData _$$_YouTubeDataFromJson(Map<String, dynamic> json) =>
    _$_YouTubeData(
      videoId: json['videoId'] as String,
      title: json['title'] as String,
      thumbnailUrlList: (json['thumbnails'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      viewCount: json['viewCount'] as int,
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$$_YouTubeDataToJson(_$_YouTubeData instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'title': instance.title,
      'thumbnails': instance.thumbnailUrlList,
      'viewCount': instance.viewCount,
      'duration': instance.duration,
    };
