// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoDetails _$VideoDetailsFromJson(Map<String, dynamic> json) {
  return _VideoDetails.fromJson(json);
}

/// @nodoc
mixin _$VideoDetails {
// @JsonKey(name: "id") required String? videoId,
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnails")
  Map<String, dynamic>? get thumbnails => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<dynamic>? get tagsList => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryId")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "channelTitle")
  String? get channelTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "channelId")
  String? get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDetailsCopyWith<VideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailsCopyWith<$Res> {
  factory $VideoDetailsCopyWith(
          VideoDetails value, $Res Function(VideoDetails) then) =
      _$VideoDetailsCopyWithImpl<$Res, VideoDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "thumbnails") Map<String, dynamic>? thumbnails,
      @JsonKey(name: "tags") List<dynamic>? tagsList,
      @JsonKey(name: "categoryId") String? categoryId,
      @JsonKey(name: "channelTitle") String? channelTitle,
      @JsonKey(name: "channelId") String? channelId});
}

/// @nodoc
class _$VideoDetailsCopyWithImpl<$Res, $Val extends VideoDetails>
    implements $VideoDetailsCopyWith<$Res> {
  _$VideoDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? tagsList = freezed,
    Object? categoryId = freezed,
    Object? channelTitle = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: freezed == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tagsList: freezed == tagsList
          ? _value.tagsList
          : tagsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTitle: freezed == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoDetailsCopyWith<$Res>
    implements $VideoDetailsCopyWith<$Res> {
  factory _$$_VideoDetailsCopyWith(
          _$_VideoDetails value, $Res Function(_$_VideoDetails) then) =
      __$$_VideoDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "thumbnails") Map<String, dynamic>? thumbnails,
      @JsonKey(name: "tags") List<dynamic>? tagsList,
      @JsonKey(name: "categoryId") String? categoryId,
      @JsonKey(name: "channelTitle") String? channelTitle,
      @JsonKey(name: "channelId") String? channelId});
}

/// @nodoc
class __$$_VideoDetailsCopyWithImpl<$Res>
    extends _$VideoDetailsCopyWithImpl<$Res, _$_VideoDetails>
    implements _$$_VideoDetailsCopyWith<$Res> {
  __$$_VideoDetailsCopyWithImpl(
      _$_VideoDetails _value, $Res Function(_$_VideoDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? tagsList = freezed,
    Object? categoryId = freezed,
    Object? channelTitle = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_$_VideoDetails(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: freezed == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tagsList: freezed == tagsList
          ? _value._tagsList
          : tagsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTitle: freezed == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoDetails implements _VideoDetails {
  _$_VideoDetails(
      {@JsonKey(name: "title")
          required this.title,
      @JsonKey(name: "description")
          required this.description,
      @JsonKey(name: "thumbnails")
          required final Map<String, dynamic>? thumbnails,
      @JsonKey(name: "tags")
          required final List<dynamic>? tagsList,
      @JsonKey(name: "categoryId")
          required this.categoryId,
      @JsonKey(name: "channelTitle")
          required this.channelTitle,
      @JsonKey(name: "channelId")
          required this.channelId})
      : _thumbnails = thumbnails,
        _tagsList = tagsList;

  factory _$_VideoDetails.fromJson(Map<String, dynamic> json) =>
      _$$_VideoDetailsFromJson(json);

// @JsonKey(name: "id") required String? videoId,
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  final Map<String, dynamic>? _thumbnails;
  @override
  @JsonKey(name: "thumbnails")
  Map<String, dynamic>? get thumbnails {
    final value = _thumbnails;
    if (value == null) return null;
    if (_thumbnails is EqualUnmodifiableMapView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<dynamic>? _tagsList;
  @override
  @JsonKey(name: "tags")
  List<dynamic>? get tagsList {
    final value = _tagsList;
    if (value == null) return null;
    if (_tagsList is EqualUnmodifiableListView) return _tagsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "categoryId")
  final String? categoryId;
  @override
  @JsonKey(name: "channelTitle")
  final String? channelTitle;
  @override
  @JsonKey(name: "channelId")
  final String? channelId;

  @override
  String toString() {
    return 'VideoDetails(title: $title, description: $description, thumbnails: $thumbnails, tagsList: $tagsList, categoryId: $categoryId, channelTitle: $channelTitle, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoDetails &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            const DeepCollectionEquality().equals(other._tagsList, _tagsList) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_thumbnails),
      const DeepCollectionEquality().hash(_tagsList),
      categoryId,
      channelTitle,
      channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoDetailsCopyWith<_$_VideoDetails> get copyWith =>
      __$$_VideoDetailsCopyWithImpl<_$_VideoDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoDetailsToJson(
      this,
    );
  }
}

abstract class _VideoDetails implements VideoDetails {
  factory _VideoDetails(
      {@JsonKey(name: "title")
          required final String? title,
      @JsonKey(name: "description")
          required final String? description,
      @JsonKey(name: "thumbnails")
          required final Map<String, dynamic>? thumbnails,
      @JsonKey(name: "tags")
          required final List<dynamic>? tagsList,
      @JsonKey(name: "categoryId")
          required final String? categoryId,
      @JsonKey(name: "channelTitle")
          required final String? channelTitle,
      @JsonKey(name: "channelId")
          required final String? channelId}) = _$_VideoDetails;

  factory _VideoDetails.fromJson(Map<String, dynamic> json) =
      _$_VideoDetails.fromJson;

  @override // @JsonKey(name: "id") required String? videoId,
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "thumbnails")
  Map<String, dynamic>? get thumbnails;
  @override
  @JsonKey(name: "tags")
  List<dynamic>? get tagsList;
  @override
  @JsonKey(name: "categoryId")
  String? get categoryId;
  @override
  @JsonKey(name: "channelTitle")
  String? get channelTitle;
  @override
  @JsonKey(name: "channelId")
  String? get channelId;
  @override
  @JsonKey(ignore: true)
  _$$_VideoDetailsCopyWith<_$_VideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
