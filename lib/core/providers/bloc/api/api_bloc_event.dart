part of 'api_bloc_bloc.dart';

@freezed
class ApiBlocEvent with _$ApiBlocEvent {
  const factory ApiBlocEvent.apiGet() = ApiGet;
}