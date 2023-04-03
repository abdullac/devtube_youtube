import 'package:bloc/bloc.dart';
import 'package:devtube_sample/core/services/facades/dio_facade.dart';
import 'package:devtube_sample/core/services/repository/dio_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'api_bloc_event.dart';
part 'api_bloc_state.dart';
part 'api_bloc_bloc.freezed.dart';

@injectable
class ApiBlocBloc extends Bloc<ApiBlocEvent, ApiBlocState> {
  final DioFacade dioFacade;
  ApiBlocBloc(this.dioFacade) : super(const _Initial()) {
    on<ApiGet>((event, emit) {
      dioFacade.dioGet();
    });
  }
}
