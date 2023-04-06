// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shorts_video_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShortsVideoPlayerEvent {
  String? get shortsVideoId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? shortsVideoId) playShortsVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? shortsVideoId)? playShortsVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? shortsVideoId)? playShortsVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayShortsVideo value) playShortsVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayShortsVideo value)? playShortsVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayShortsVideo value)? playShortsVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortsVideoPlayerEventCopyWith<ShortsVideoPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortsVideoPlayerEventCopyWith<$Res> {
  factory $ShortsVideoPlayerEventCopyWith(ShortsVideoPlayerEvent value,
          $Res Function(ShortsVideoPlayerEvent) then) =
      _$ShortsVideoPlayerEventCopyWithImpl<$Res, ShortsVideoPlayerEvent>;
  @useResult
  $Res call({String? shortsVideoId});
}

/// @nodoc
class _$ShortsVideoPlayerEventCopyWithImpl<$Res,
        $Val extends ShortsVideoPlayerEvent>
    implements $ShortsVideoPlayerEventCopyWith<$Res> {
  _$ShortsVideoPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortsVideoId = freezed,
  }) {
    return _then(_value.copyWith(
      shortsVideoId: freezed == shortsVideoId
          ? _value.shortsVideoId
          : shortsVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayShortsVideoCopyWith<$Res>
    implements $ShortsVideoPlayerEventCopyWith<$Res> {
  factory _$$PlayShortsVideoCopyWith(
          _$PlayShortsVideo value, $Res Function(_$PlayShortsVideo) then) =
      __$$PlayShortsVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? shortsVideoId});
}

/// @nodoc
class __$$PlayShortsVideoCopyWithImpl<$Res>
    extends _$ShortsVideoPlayerEventCopyWithImpl<$Res, _$PlayShortsVideo>
    implements _$$PlayShortsVideoCopyWith<$Res> {
  __$$PlayShortsVideoCopyWithImpl(
      _$PlayShortsVideo _value, $Res Function(_$PlayShortsVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortsVideoId = freezed,
  }) {
    return _then(_$PlayShortsVideo(
      shortsVideoId: freezed == shortsVideoId
          ? _value.shortsVideoId
          : shortsVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlayShortsVideo implements PlayShortsVideo {
  const _$PlayShortsVideo({required this.shortsVideoId});

  @override
  final String? shortsVideoId;

  @override
  String toString() {
    return 'ShortsVideoPlayerEvent.playShortsVideo(shortsVideoId: $shortsVideoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayShortsVideo &&
            (identical(other.shortsVideoId, shortsVideoId) ||
                other.shortsVideoId == shortsVideoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shortsVideoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayShortsVideoCopyWith<_$PlayShortsVideo> get copyWith =>
      __$$PlayShortsVideoCopyWithImpl<_$PlayShortsVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? shortsVideoId) playShortsVideo,
  }) {
    return playShortsVideo(shortsVideoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? shortsVideoId)? playShortsVideo,
  }) {
    return playShortsVideo?.call(shortsVideoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? shortsVideoId)? playShortsVideo,
    required TResult orElse(),
  }) {
    if (playShortsVideo != null) {
      return playShortsVideo(shortsVideoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayShortsVideo value) playShortsVideo,
  }) {
    return playShortsVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayShortsVideo value)? playShortsVideo,
  }) {
    return playShortsVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayShortsVideo value)? playShortsVideo,
    required TResult orElse(),
  }) {
    if (playShortsVideo != null) {
      return playShortsVideo(this);
    }
    return orElse();
  }
}

abstract class PlayShortsVideo implements ShortsVideoPlayerEvent {
  const factory PlayShortsVideo({required final String? shortsVideoId}) =
      _$PlayShortsVideo;

  @override
  String? get shortsVideoId;
  @override
  @JsonKey(ignore: true)
  _$$PlayShortsVideoCopyWith<_$PlayShortsVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShortsVideoPlayerState {
  String? get shortsVideoId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortsVideoPlayerStateCopyWith<ShortsVideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortsVideoPlayerStateCopyWith<$Res> {
  factory $ShortsVideoPlayerStateCopyWith(ShortsVideoPlayerState value,
          $Res Function(ShortsVideoPlayerState) then) =
      _$ShortsVideoPlayerStateCopyWithImpl<$Res, ShortsVideoPlayerState>;
  @useResult
  $Res call({String? shortsVideoId});
}

/// @nodoc
class _$ShortsVideoPlayerStateCopyWithImpl<$Res,
        $Val extends ShortsVideoPlayerState>
    implements $ShortsVideoPlayerStateCopyWith<$Res> {
  _$ShortsVideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortsVideoId = freezed,
  }) {
    return _then(_value.copyWith(
      shortsVideoId: freezed == shortsVideoId
          ? _value.shortsVideoId
          : shortsVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortsVideoPlayerStateCopyWith<$Res>
    implements $ShortsVideoPlayerStateCopyWith<$Res> {
  factory _$$_ShortsVideoPlayerStateCopyWith(_$_ShortsVideoPlayerState value,
          $Res Function(_$_ShortsVideoPlayerState) then) =
      __$$_ShortsVideoPlayerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? shortsVideoId});
}

/// @nodoc
class __$$_ShortsVideoPlayerStateCopyWithImpl<$Res>
    extends _$ShortsVideoPlayerStateCopyWithImpl<$Res,
        _$_ShortsVideoPlayerState>
    implements _$$_ShortsVideoPlayerStateCopyWith<$Res> {
  __$$_ShortsVideoPlayerStateCopyWithImpl(_$_ShortsVideoPlayerState _value,
      $Res Function(_$_ShortsVideoPlayerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortsVideoId = freezed,
  }) {
    return _then(_$_ShortsVideoPlayerState(
      shortsVideoId: freezed == shortsVideoId
          ? _value.shortsVideoId
          : shortsVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShortsVideoPlayerState implements _ShortsVideoPlayerState {
  const _$_ShortsVideoPlayerState({required this.shortsVideoId});

  @override
  final String? shortsVideoId;

  @override
  String toString() {
    return 'ShortsVideoPlayerState(shortsVideoId: $shortsVideoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortsVideoPlayerState &&
            (identical(other.shortsVideoId, shortsVideoId) ||
                other.shortsVideoId == shortsVideoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shortsVideoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortsVideoPlayerStateCopyWith<_$_ShortsVideoPlayerState> get copyWith =>
      __$$_ShortsVideoPlayerStateCopyWithImpl<_$_ShortsVideoPlayerState>(
          this, _$identity);
}

abstract class _ShortsVideoPlayerState implements ShortsVideoPlayerState {
  const factory _ShortsVideoPlayerState(
      {required final String? shortsVideoId}) = _$_ShortsVideoPlayerState;

  @override
  String? get shortsVideoId;
  @override
  @JsonKey(ignore: true)
  _$$_ShortsVideoPlayerStateCopyWith<_$_ShortsVideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
