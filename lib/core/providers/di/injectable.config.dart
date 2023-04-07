// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart' as _i7;
import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart'
    as _i8;
import 'package:devtube_sample/core/services/i_facades/home/home_facade.dart'
    as _i3;
import 'package:devtube_sample/core/services/i_facades/search/search_facade.dart'
    as _i5;
import 'package:devtube_sample/core/services/i_repository/home/home_repository.dart'
    as _i4;
import 'package:devtube_sample/core/services/i_repository/search/search_repository.dart'
    as _i6;
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
    gh.lazySingleton<_i3.HomeFacade>(() => _i4.HomeRepository());
    gh.lazySingleton<_i5.SearchFacade>(() => _i6.SearchRepository());
    gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(gh<_i3.HomeFacade>()));
    gh.factory<_i8.SearchBloc>(() => _i8.SearchBloc(gh<_i5.SearchFacade>()));
    return this;
  }
}
