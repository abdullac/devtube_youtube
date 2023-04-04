part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<ShortsData> youtubeData,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      isLoading: false,
      isError: false,
      youtubeData: [],
    );
  }
}
