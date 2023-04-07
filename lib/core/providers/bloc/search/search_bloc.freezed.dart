// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get searchWord => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchWord) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchWord)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchWord)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String searchWord});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWord = null,
  }) {
    return _then(_value.copyWith(
      searchWord: null == searchWord
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$$SearchCopyWith(_$Search value, $Res Function(_$Search) then) =
      __$$SearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchWord});
}

/// @nodoc
class __$$SearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$Search>
    implements _$$SearchCopyWith<$Res> {
  __$$SearchCopyWithImpl(_$Search _value, $Res Function(_$Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWord = null,
  }) {
    return _then(_$Search(
      searchWord: null == searchWord
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Search implements Search {
  const _$Search({required this.searchWord});

  @override
  final String searchWord;

  @override
  String toString() {
    return 'SearchEvent.search(searchWord: $searchWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Search &&
            (identical(other.searchWord, searchWord) ||
                other.searchWord == searchWord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCopyWith<_$Search> get copyWith =>
      __$$SearchCopyWithImpl<_$Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchWord) search,
  }) {
    return search(searchWord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchWord)? search,
  }) {
    return search?.call(searchWord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchWord)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements SearchEvent {
  const factory Search({required final String searchWord}) = _$Search;

  @override
  String get searchWord;
  @override
  @JsonKey(ignore: true)
  _$$SearchCopyWith<_$Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError =>
      throw _privateConstructorUsedError; // required SearchResultData? searchResultData,
  List<SearchResultData?> get searchResultDataList =>
      throw _privateConstructorUsedError;
  List<SearchResultData?> get searchShortsListResults =>
      throw _privateConstructorUsedError;
  String? get searchedWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<SearchResultData?> searchResultDataList,
      List<SearchResultData?> searchShortsListResults,
      String? searchedWord});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? searchResultDataList = null,
    Object? searchShortsListResults = null,
    Object? searchedWord = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultDataList: null == searchResultDataList
          ? _value.searchResultDataList
          : searchResultDataList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData?>,
      searchShortsListResults: null == searchShortsListResults
          ? _value.searchShortsListResults
          : searchShortsListResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData?>,
      searchedWord: freezed == searchedWord
          ? _value.searchedWord
          : searchedWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<SearchResultData?> searchResultDataList,
      List<SearchResultData?> searchShortsListResults,
      String? searchedWord});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? searchResultDataList = null,
    Object? searchShortsListResults = null,
    Object? searchedWord = freezed,
  }) {
    return _then(_$_SearchState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultDataList: null == searchResultDataList
          ? _value._searchResultDataList
          : searchResultDataList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData?>,
      searchShortsListResults: null == searchShortsListResults
          ? _value._searchShortsListResults
          : searchShortsListResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData?>,
      searchedWord: freezed == searchedWord
          ? _value.searchedWord
          : searchedWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.isError,
      required final List<SearchResultData?> searchResultDataList,
      required final List<SearchResultData?> searchShortsListResults,
      required this.searchedWord})
      : _searchResultDataList = searchResultDataList,
        _searchShortsListResults = searchShortsListResults;

  @override
  final bool isLoading;
  @override
  final bool isError;
// required SearchResultData? searchResultData,
  final List<SearchResultData?> _searchResultDataList;
// required SearchResultData? searchResultData,
  @override
  List<SearchResultData?> get searchResultDataList {
    if (_searchResultDataList is EqualUnmodifiableListView)
      return _searchResultDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultDataList);
  }

  final List<SearchResultData?> _searchShortsListResults;
  @override
  List<SearchResultData?> get searchShortsListResults {
    if (_searchShortsListResults is EqualUnmodifiableListView)
      return _searchShortsListResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchShortsListResults);
  }

  @override
  final String? searchedWord;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isError: $isError, searchResultDataList: $searchResultDataList, searchShortsListResults: $searchShortsListResults, searchedWord: $searchedWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._searchResultDataList, _searchResultDataList) &&
            const DeepCollectionEquality().equals(
                other._searchShortsListResults, _searchShortsListResults) &&
            (identical(other.searchedWord, searchedWord) ||
                other.searchedWord == searchedWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_searchResultDataList),
      const DeepCollectionEquality().hash(_searchShortsListResults),
      searchedWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool isError,
      required final List<SearchResultData?> searchResultDataList,
      required final List<SearchResultData?> searchShortsListResults,
      required final String? searchedWord}) = _$_SearchState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override // required SearchResultData? searchResultData,
  List<SearchResultData?> get searchResultDataList;
  @override
  List<SearchResultData?> get searchShortsListResults;
  @override
  String? get searchedWord;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
