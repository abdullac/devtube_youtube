// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:devtube_sample/core/providers/bloc/bloc/api_bloc_bloc.dart'
    as _i6;
import 'package:devtube_sample/core/services/facades/dio_facade.dart' as _i3;
import 'package:devtube_sample/core/services/repository/dio_repository.dart'
    as _i4;
import 'package:devtube_sample/main.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DioFacade>(() => _i4.DioRepository());
    gh.factory<_i5.GetApi>(() => _i5.GetApi(gh<_i3.DioFacade>()));
    gh.factory<_i6.ApiBlocBloc>(() => _i6.ApiBlocBloc(gh<_i3.DioFacade>()));
    return this;
  }
}
