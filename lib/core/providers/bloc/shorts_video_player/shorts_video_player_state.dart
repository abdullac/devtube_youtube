part of 'shorts_video_player_bloc.dart';

@freezed
class ShortsVideoPlayerState with _$ShortsVideoPlayerState {
  const factory ShortsVideoPlayerState({
    required String? shortsVideoId,
  }) = _ShortsVideoPlayerState;
  factory ShortsVideoPlayerState.initial() {
    return const ShortsVideoPlayerState(
      shortsVideoId: null,
    );
  }
}
