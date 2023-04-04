part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getShortsList() = GetShortsList;
  const factory HomeEvent.getVideosListList() = GetVideosListList;
}