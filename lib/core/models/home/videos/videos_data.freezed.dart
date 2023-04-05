// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideosData _$VideosDataFromJson(Map<String, dynamic> json) {
  return _VideosData.fromJson(json);
}

/// @nodoc
mixin _$VideosData {
  @JsonKey(name: "id")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "snippet")
  VideoDetails? get videoDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosDataCopyWith<VideosData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosDataCopyWith<$Res> {
  factory $VideosDataCopyWith(
          VideosData value, $Res Function(VideosData) then) =
      _$VideosDataCopyWithImpl<$Res, VideosData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? videoId,
      @JsonKey(name: "snippet") VideoDetails? videoDetails});

  $VideoDetailsCopyWith<$Res>? get videoDetails;
}

/// @nodoc
class _$VideosDataCopyWithImpl<$Res, $Val extends VideosData>
    implements $VideosDataCopyWith<$Res> {
  _$VideosDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? videoDetails = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDetails: freezed == videoDetails
          ? _value.videoDetails
          : videoDetails // ignore: cast_nullable_to_non_nullable
              as VideoDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoDetailsCopyWith<$Res>? get videoDetails {
    if (_value.videoDetails == null) {
      return null;
    }

    return $VideoDetailsCopyWith<$Res>(_value.videoDetails!, (value) {
      return _then(_value.copyWith(videoDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VideosDataCopyWith<$Res>
    implements $VideosDataCopyWith<$Res> {
  factory _$$_VideosDataCopyWith(
          _$_VideosData value, $Res Function(_$_VideosData) then) =
      __$$_VideosDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? videoId,
      @JsonKey(name: "snippet") VideoDetails? videoDetails});

  @override
  $VideoDetailsCopyWith<$Res>? get videoDetails;
}

/// @nodoc
class __$$_VideosDataCopyWithImpl<$Res>
    extends _$VideosDataCopyWithImpl<$Res, _$_VideosData>
    implements _$$_VideosDataCopyWith<$Res> {
  __$$_VideosDataCopyWithImpl(
      _$_VideosData _value, $Res Function(_$_VideosData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? videoDetails = freezed,
  }) {
    return _then(_$_VideosData(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDetails: freezed == videoDetails
          ? _value.videoDetails
          : videoDetails // ignore: cast_nullable_to_non_nullable
              as VideoDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideosData implements _VideosData {
  _$_VideosData(
      {@JsonKey(name: "id") required this.videoId,
      @JsonKey(name: "snippet") required this.videoDetails});

  factory _$_VideosData.fromJson(Map<String, dynamic> json) =>
      _$$_VideosDataFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? videoId;
  @override
  @JsonKey(name: "snippet")
  final VideoDetails? videoDetails;

  @override
  String toString() {
    return 'VideosData(videoId: $videoId, videoDetails: $videoDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideosData &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.videoDetails, videoDetails) ||
                other.videoDetails == videoDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, videoId, videoDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideosDataCopyWith<_$_VideosData> get copyWith =>
      __$$_VideosDataCopyWithImpl<_$_VideosData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosDataToJson(
      this,
    );
  }
}

abstract class _VideosData implements VideosData {
  factory _VideosData(
      {@JsonKey(name: "id")
          required final String? videoId,
      @JsonKey(name: "snippet")
          required final VideoDetails? videoDetails}) = _$_VideosData;

  factory _VideosData.fromJson(Map<String, dynamic> json) =
      _$_VideosData.fromJson;

  @override
  @JsonKey(name: "id")
  String? get videoId;
  @override
  @JsonKey(name: "snippet")
  VideoDetails? get videoDetails;
  @override
  @JsonKey(ignore: true)
  _$$_VideosDataCopyWith<_$_VideosData> get copyWith =>
      throw _privateConstructorUsedError;
}
