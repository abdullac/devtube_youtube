part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getShortsDataList() = GetShortsDataList;
  const factory HomeEvent.getVideosDataList({
    required String? pageToken,
  }) = GetVideosDataList;
}