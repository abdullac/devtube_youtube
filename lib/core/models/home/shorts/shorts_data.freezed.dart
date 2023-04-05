// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shorts_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortsData _$ShortsDataFromJson(Map<String, dynamic> json) {
  return _ShortsData.fromJson(json);
}

/// @nodoc
mixin _$ShortsData {
  @JsonKey(name: "videoId")
  String? get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnails")
  List<dynamic>? get thumbnailUrlList => throw _privateConstructorUsedError;
  @JsonKey(name: "viewCount")
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  String? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortsDataCopyWith<ShortsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortsDataCopyWith<$Res> {
  factory $ShortsDataCopyWith(
          ShortsData value, $Res Function(ShortsData) then) =
      _$ShortsDataCopyWithImpl<$Res, ShortsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "thumbnails") List<dynamic>? thumbnailUrlList,
      @JsonKey(name: "viewCount") int? viewCount,
      @JsonKey(name: "duration") String? duration});
}

/// @nodoc
class _$ShortsDataCopyWithImpl<$Res, $Val extends ShortsData>
    implements $ShortsDataCopyWith<$Res> {
  _$ShortsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? title = freezed,
    Object? thumbnailUrlList = freezed,
    Object? viewCount = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrlList: freezed == thumbnailUrlList
          ? _value.thumbnailUrlList
          : thumbnailUrlList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortsDataCopyWith<$Res>
    implements $ShortsDataCopyWith<$Res> {
  factory _$$_ShortsDataCopyWith(
          _$_ShortsData value, $Res Function(_$_ShortsData) then) =
      __$$_ShortsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "videoId") String? videoId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "thumbnails") List<dynamic>? thumbnailUrlList,
      @JsonKey(name: "viewCount") int? viewCount,
      @JsonKey(name: "duration") String? duration});
}

/// @nodoc
class __$$_ShortsDataCopyWithImpl<$Res>
    extends _$ShortsDataCopyWithImpl<$Res, _$_ShortsData>
    implements _$$_ShortsDataCopyWith<$Res> {
  __$$_ShortsDataCopyWithImpl(
      _$_ShortsData _value, $Res Function(_$_ShortsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? title = freezed,
    Object? thumbnailUrlList = freezed,
    Object? viewCount = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_ShortsData(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrlList: freezed == thumbnailUrlList
          ? _value._thumbnailUrlList
          : thumbnailUrlList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShortsData implements _ShortsData {
  const _$_ShortsData(
      {@JsonKey(name: "videoId")
          required this.videoId,
      @JsonKey(name: "title")
          required this.title,
      @JsonKey(name: "thumbnails")
          required final List<dynamic>? thumbnailUrlList,
      @JsonKey(name: "viewCount")
          required this.viewCount,
      @JsonKey(name: "duration")
          required this.duration})
      : _thumbnailUrlList = thumbnailUrlList;

  factory _$_ShortsData.fromJson(Map<String, dynamic> json) =>
      _$$_ShortsDataFromJson(json);

  @override
  @JsonKey(name: "videoId")
  final String? videoId;
  @override
  @JsonKey(name: "title")
  final String? title;
  final List<dynamic>? _thumbnailUrlList;
  @override
  @JsonKey(name: "thumbnails")
  List<dynamic>? get thumbnailUrlList {
    final value = _thumbnailUrlList;
    if (value == null) return null;
    if (_thumbnailUrlList is EqualUnmodifiableListView)
      return _thumbnailUrlList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "viewCount")
  final int? viewCount;
  @override
  @JsonKey(name: "duration")
  final String? duration;

  @override
  String toString() {
    return 'ShortsData(videoId: $videoId, title: $title, thumbnailUrlList: $thumbnailUrlList, viewCount: $viewCount, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortsData &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._thumbnailUrlList, _thumbnailUrlList) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      videoId,
      title,
      const DeepCollectionEquality().hash(_thumbnailUrlList),
      viewCount,
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortsDataCopyWith<_$_ShortsData> get copyWith =>
      __$$_ShortsDataCopyWithImpl<_$_ShortsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortsDataToJson(
      this,
    );
  }
}

abstract class _ShortsData implements ShortsData {
  const factory _ShortsData(
      {@JsonKey(name: "videoId")
          required final String? videoId,
      @JsonKey(name: "title")
          required final String? title,
      @JsonKey(name: "thumbnails")
          required final List<dynamic>? thumbnailUrlList,
      @JsonKey(name: "viewCount")
          required final int? viewCount,
      @JsonKey(name: "duration")
          required final String? duration}) = _$_ShortsData;

  factory _ShortsData.fromJson(Map<String, dynamic> json) =
      _$_ShortsData.fromJson;

  @override
  @JsonKey(name: "videoId")
  String? get videoId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "thumbnails")
  List<dynamic>? get thumbnailUrlList;
  @override
  @JsonKey(name: "viewCount")
  int? get viewCount;
  @override
  @JsonKey(name: "duration")
  String? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_ShortsDataCopyWith<_$_ShortsData> get copyWith =>
      throw _privateConstructorUsedError;
}
