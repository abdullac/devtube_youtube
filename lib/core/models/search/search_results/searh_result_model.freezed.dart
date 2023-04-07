// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searh_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) {
  return _SearchResultData.fromJson(json);
}

/// @nodoc
mixin _$SearchResultData {
  @JsonKey(name: "id")
  SearhResultVideoId? get resultDataId => throw _privateConstructorUsedError;
  @JsonKey(name: "snippet")
  SearchResultDetails? get resultDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultDataCopyWith<SearchResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDataCopyWith<$Res> {
  factory $SearchResultDataCopyWith(
          SearchResultData value, $Res Function(SearchResultData) then) =
      _$SearchResultDataCopyWithImpl<$Res, SearchResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") SearhResultVideoId? resultDataId,
      @JsonKey(name: "snippet") SearchResultDetails? resultDetails});

  $SearhResultVideoIdCopyWith<$Res>? get resultDataId;
  $SearchResultDetailsCopyWith<$Res>? get resultDetails;
}

/// @nodoc
class _$SearchResultDataCopyWithImpl<$Res, $Val extends SearchResultData>
    implements $SearchResultDataCopyWith<$Res> {
  _$SearchResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultDataId = freezed,
    Object? resultDetails = freezed,
  }) {
    return _then(_value.copyWith(
      resultDataId: freezed == resultDataId
          ? _value.resultDataId
          : resultDataId // ignore: cast_nullable_to_non_nullable
              as SearhResultVideoId?,
      resultDetails: freezed == resultDetails
          ? _value.resultDetails
          : resultDetails // ignore: cast_nullable_to_non_nullable
              as SearchResultDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearhResultVideoIdCopyWith<$Res>? get resultDataId {
    if (_value.resultDataId == null) {
      return null;
    }

    return $SearhResultVideoIdCopyWith<$Res>(_value.resultDataId!, (value) {
      return _then(_value.copyWith(resultDataId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResultDetailsCopyWith<$Res>? get resultDetails {
    if (_value.resultDetails == null) {
      return null;
    }

    return $SearchResultDetailsCopyWith<$Res>(_value.resultDetails!, (value) {
      return _then(_value.copyWith(resultDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchResultDataCopyWith<$Res>
    implements $SearchResultDataCopyWith<$Res> {
  factory _$$_SearchResultDataCopyWith(
          _$_SearchResultData value, $Res Function(_$_SearchResultData) then) =
      __$$_SearchResultDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") SearhResultVideoId? resultDataId,
      @JsonKey(name: "snippet") SearchResultDetails? resultDetails});

  @override
  $SearhResultVideoIdCopyWith<$Res>? get resultDataId;
  @override
  $SearchResultDetailsCopyWith<$Res>? get resultDetails;
}

/// @nodoc
class __$$_SearchResultDataCopyWithImpl<$Res>
    extends _$SearchResultDataCopyWithImpl<$Res, _$_SearchResultData>
    implements _$$_SearchResultDataCopyWith<$Res> {
  __$$_SearchResultDataCopyWithImpl(
      _$_SearchResultData _value, $Res Function(_$_SearchResultData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultDataId = freezed,
    Object? resultDetails = freezed,
  }) {
    return _then(_$_SearchResultData(
      resultDataId: freezed == resultDataId
          ? _value.resultDataId
          : resultDataId // ignore: cast_nullable_to_non_nullable
              as SearhResultVideoId?,
      resultDetails: freezed == resultDetails
          ? _value.resultDetails
          : resultDetails // ignore: cast_nullable_to_non_nullable
              as SearchResultDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultData implements _SearchResultData {
  const _$_SearchResultData(
      {@JsonKey(name: "id") required this.resultDataId,
      @JsonKey(name: "snippet") required this.resultDetails});

  factory _$_SearchResultData.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultDataFromJson(json);

  @override
  @JsonKey(name: "id")
  final SearhResultVideoId? resultDataId;
  @override
  @JsonKey(name: "snippet")
  final SearchResultDetails? resultDetails;

  @override
  String toString() {
    return 'SearchResultData(resultDataId: $resultDataId, resultDetails: $resultDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultData &&
            (identical(other.resultDataId, resultDataId) ||
                other.resultDataId == resultDataId) &&
            (identical(other.resultDetails, resultDetails) ||
                other.resultDetails == resultDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resultDataId, resultDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultDataCopyWith<_$_SearchResultData> get copyWith =>
      __$$_SearchResultDataCopyWithImpl<_$_SearchResultData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultDataToJson(
      this,
    );
  }
}

abstract class _SearchResultData implements SearchResultData {
  const factory _SearchResultData(
          {@JsonKey(name: "id")
              required final SearhResultVideoId? resultDataId,
          @JsonKey(name: "snippet")
              required final SearchResultDetails? resultDetails}) =
      _$_SearchResultData;

  factory _SearchResultData.fromJson(Map<String, dynamic> json) =
      _$_SearchResultData.fromJson;

  @override
  @JsonKey(name: "id")
  SearhResultVideoId? get resultDataId;
  @override
  @JsonKey(name: "snippet")
  SearchResultDetails? get resultDetails;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultDataCopyWith<_$_SearchResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

SearhResultVideoId _$SearhResultVideoIdFromJson(Map<String, dynamic> json) {
  return _searhResultVideoId.fromJson(json);
}

/// @nodoc
mixin _$SearhResultVideoId {
  @JsonKey(name: "videoId")
  String? get videoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearhResultVideoIdCopyWith<SearhResultVideoId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearhResultVideoIdCopyWith<$Res> {
  factory $SearhResultVideoIdCopyWith(
          SearhResultVideoId value, $Res Function(SearhResultVideoId) then) =
      _$SearhResultVideoIdCopyWithImpl<$Res, SearhResultVideoId>;
  @useResult
  $Res call({@JsonKey(name: "videoId") String? videoId});
}

/// @nodoc
class _$SearhResultVideoIdCopyWithImpl<$Res, $Val extends SearhResultVideoId>
    implements $SearhResultVideoIdCopyWith<$Res> {
  _$SearhResultVideoIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_searhResultVideoIdCopyWith<$Res>
    implements $SearhResultVideoIdCopyWith<$Res> {
  factory _$$_searhResultVideoIdCopyWith(_$_searhResultVideoId value,
          $Res Function(_$_searhResultVideoId) then) =
      __$$_searhResultVideoIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "videoId") String? videoId});
}

/// @nodoc
class __$$_searhResultVideoIdCopyWithImpl<$Res>
    extends _$SearhResultVideoIdCopyWithImpl<$Res, _$_searhResultVideoId>
    implements _$$_searhResultVideoIdCopyWith<$Res> {
  __$$_searhResultVideoIdCopyWithImpl(
      _$_searhResultVideoId _value, $Res Function(_$_searhResultVideoId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
  }) {
    return _then(_$_searhResultVideoId(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_searhResultVideoId implements _searhResultVideoId {
  const _$_searhResultVideoId(
      {@JsonKey(name: "videoId") required this.videoId});

  factory _$_searhResultVideoId.fromJson(Map<String, dynamic> json) =>
      _$$_searhResultVideoIdFromJson(json);

  @override
  @JsonKey(name: "videoId")
  final String? videoId;

  @override
  String toString() {
    return 'SearhResultVideoId(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_searhResultVideoId &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_searhResultVideoIdCopyWith<_$_searhResultVideoId> get copyWith =>
      __$$_searhResultVideoIdCopyWithImpl<_$_searhResultVideoId>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_searhResultVideoIdToJson(
      this,
    );
  }
}

abstract class _searhResultVideoId implements SearhResultVideoId {
  const factory _searhResultVideoId(
          {@JsonKey(name: "videoId") required final String? videoId}) =
      _$_searhResultVideoId;

  factory _searhResultVideoId.fromJson(Map<String, dynamic> json) =
      _$_searhResultVideoId.fromJson;

  @override
  @JsonKey(name: "videoId")
  String? get videoId;
  @override
  @JsonKey(ignore: true)
  _$$_searhResultVideoIdCopyWith<_$_searhResultVideoId> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultDetails _$SearchResultDetailsFromJson(Map<String, dynamic> json) {
  return _SearchResultDetails.fromJson(json);
}

/// @nodoc
mixin _$SearchResultDetails {
  @JsonKey(name: "channelId")
  String? get channelId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnails")
  Map<String, dynamic>? get thumbnailMap => throw _privateConstructorUsedError;
  @JsonKey(name: "channelTitle")
  String? get channelTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultDetailsCopyWith<SearchResultDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDetailsCopyWith<$Res> {
  factory $SearchResultDetailsCopyWith(
          SearchResultDetails value, $Res Function(SearchResultDetails) then) =
      _$SearchResultDetailsCopyWithImpl<$Res, SearchResultDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "channelId") String? channelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "thumbnails") Map<String, dynamic>? thumbnailMap,
      @JsonKey(name: "channelTitle") String? channelTitle});
}

/// @nodoc
class _$SearchResultDetailsCopyWithImpl<$Res, $Val extends SearchResultDetails>
    implements $SearchResultDetailsCopyWith<$Res> {
  _$SearchResultDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnailMap = freezed,
    Object? channelTitle = freezed,
  }) {
    return _then(_value.copyWith(
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailMap: freezed == thumbnailMap
          ? _value.thumbnailMap
          : thumbnailMap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      channelTitle: freezed == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultDetailsCopyWith<$Res>
    implements $SearchResultDetailsCopyWith<$Res> {
  factory _$$_SearchResultDetailsCopyWith(_$_SearchResultDetails value,
          $Res Function(_$_SearchResultDetails) then) =
      __$$_SearchResultDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "channelId") String? channelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "thumbnails") Map<String, dynamic>? thumbnailMap,
      @JsonKey(name: "channelTitle") String? channelTitle});
}

/// @nodoc
class __$$_SearchResultDetailsCopyWithImpl<$Res>
    extends _$SearchResultDetailsCopyWithImpl<$Res, _$_SearchResultDetails>
    implements _$$_SearchResultDetailsCopyWith<$Res> {
  __$$_SearchResultDetailsCopyWithImpl(_$_SearchResultDetails _value,
      $Res Function(_$_SearchResultDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnailMap = freezed,
    Object? channelTitle = freezed,
  }) {
    return _then(_$_SearchResultDetails(
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailMap: freezed == thumbnailMap
          ? _value._thumbnailMap
          : thumbnailMap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      channelTitle: freezed == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultDetails implements _SearchResultDetails {
  const _$_SearchResultDetails(
      {@JsonKey(name: "channelId")
          required this.channelId,
      @JsonKey(name: "title")
          required this.title,
      @JsonKey(name: "description")
          required this.description,
      @JsonKey(name: "thumbnails")
          required final Map<String, dynamic>? thumbnailMap,
      @JsonKey(name: "channelTitle")
          required this.channelTitle})
      : _thumbnailMap = thumbnailMap;

  factory _$_SearchResultDetails.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultDetailsFromJson(json);

  @override
  @JsonKey(name: "channelId")
  final String? channelId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  final Map<String, dynamic>? _thumbnailMap;
  @override
  @JsonKey(name: "thumbnails")
  Map<String, dynamic>? get thumbnailMap {
    final value = _thumbnailMap;
    if (value == null) return null;
    if (_thumbnailMap is EqualUnmodifiableMapView) return _thumbnailMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: "channelTitle")
  final String? channelTitle;

  @override
  String toString() {
    return 'SearchResultDetails(channelId: $channelId, title: $title, description: $description, thumbnailMap: $thumbnailMap, channelTitle: $channelTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultDetails &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._thumbnailMap, _thumbnailMap) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelId, title, description,
      const DeepCollectionEquality().hash(_thumbnailMap), channelTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultDetailsCopyWith<_$_SearchResultDetails> get copyWith =>
      __$$_SearchResultDetailsCopyWithImpl<_$_SearchResultDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultDetailsToJson(
      this,
    );
  }
}

abstract class _SearchResultDetails implements SearchResultDetails {
  const factory _SearchResultDetails(
      {@JsonKey(name: "channelId")
          required final String? channelId,
      @JsonKey(name: "title")
          required final String? title,
      @JsonKey(name: "description")
          required final String? description,
      @JsonKey(name: "thumbnails")
          required final Map<String, dynamic>? thumbnailMap,
      @JsonKey(name: "channelTitle")
          required final String? channelTitle}) = _$_SearchResultDetails;

  factory _SearchResultDetails.fromJson(Map<String, dynamic> json) =
      _$_SearchResultDetails.fromJson;

  @override
  @JsonKey(name: "channelId")
  String? get channelId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "thumbnails")
  Map<String, dynamic>? get thumbnailMap;
  @override
  @JsonKey(name: "channelTitle")
  String? get channelTitle;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultDetailsCopyWith<_$_SearchResultDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
