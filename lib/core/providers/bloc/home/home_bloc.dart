import 'package:bloc/bloc.dart';
import 'package:devtube_sample/core/models/home/shorts/shorts_data.dart';
import 'package:devtube_sample/core/models/home/videos/videos_data.dart';
import 'package:devtube_sample/core/services/facades/home/home_facade.dart';
import 'package:devtube_sample/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeFacade homeFacade;
  HomeBloc(this.homeFacade) : super(HomeState.initial()) {
    on<GetShortsDataList>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
        shortsData: null,
      ));

      final getShortsDataList = await homeFacade.getShortsDataList();
      final getShortsData = await homeFacade.getShortsData();
      emit(state.copyWith(
        isLoading: false,
        isError: false,
        shortsData: getShortsData,
        shortsDataList: getShortsDataList,
      ));
    });

    on<GetVideosDataList>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
        videosData: null,
        videosDataList: [],
      ));

      final getVideosDataList = await homeFacade.getVideosDataList();
      final getVideosData = await homeFacade.getVideosData();
      emit(state.copyWith(
        isLoading: false,
        isError: false,
        videosData: getVideosData,
        videosDataList: getVideosDataList,
      ));
    });
  }
}
