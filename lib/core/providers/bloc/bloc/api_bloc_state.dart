part of 'api_bloc_bloc.dart';

@freezed
class ApiBlocState with _$ApiBlocState {
  const factory ApiBlocState() = _ApiBlocGet;
  const factory ApiBlocState.initial() = _Initial;
}
