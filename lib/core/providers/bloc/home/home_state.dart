part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    required String? thumbnailUrl,
    required ShortsData? shortsData,
    required VideosData? videosData,
    required List<ShortsData>? shortsDataList,
    required List<VideosData?>? videosDataList,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      isLoading: false,
      isError: false,
      thumbnailUrl: null,
      shortsData: null,
      videosData: null,
      shortsDataList: [],
      videosDataList: [],
    );
  }
}
