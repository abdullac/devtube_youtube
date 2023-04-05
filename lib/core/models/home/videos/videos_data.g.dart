// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideosData _$$_VideosDataFromJson(Map<String, dynamic> json) =>
    _$_VideosData(
      videoId: json['id'] as String?,
      videoDetails: json['snippet'] == null
          ? null
          : VideoDetails.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VideosDataToJson(_$_VideosData instance) =>
    <String, dynamic>{
      'id': instance.videoId,
      'snippet': instance.videoDetails,
    };
