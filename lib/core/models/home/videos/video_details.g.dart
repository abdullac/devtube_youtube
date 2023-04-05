// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoDetails _$$_VideoDetailsFromJson(Map<String, dynamic> json) =>
    _$_VideoDetails(
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnails: json['thumbnails'] as Map<String, dynamic>?,
      tagsList: json['tags'] as List<dynamic>?,
      categoryId: json['categoryId'] as String?,
      channelTitle: json['channelTitle'] as String?,
      channelId: json['channelId'] as String?,
    );

Map<String, dynamic> _$$_VideoDetailsToJson(_$_VideoDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'tags': instance.tagsList,
      'categoryId': instance.categoryId,
      'channelTitle': instance.channelTitle,
      'channelId': instance.channelId,
    };
