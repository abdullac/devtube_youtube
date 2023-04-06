part of 'shorts_video_player_bloc.dart';

@freezed
class ShortsVideoPlayerEvent with _$ShortsVideoPlayerEvent {
  const factory ShortsVideoPlayerEvent.playShortsVideo({
    required String? shortsVideoId,
  }) = PlayShortsVideo;
}