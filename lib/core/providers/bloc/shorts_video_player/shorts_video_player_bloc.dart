import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shorts_video_player_event.dart';
part 'shorts_video_player_state.dart';
part 'shorts_video_player_bloc.freezed.dart';

class ShortsVideoPlayerBloc
    extends Bloc<ShortsVideoPlayerEvent, ShortsVideoPlayerState> {
  ShortsVideoPlayerBloc() : super(ShortsVideoPlayerState.initial()) {
    on<PlayShortsVideo>((event, emit) {
      emit(state.copyWith(
        shortsVideoId: event.shortsVideoId,
      ));
    });
  }
}
