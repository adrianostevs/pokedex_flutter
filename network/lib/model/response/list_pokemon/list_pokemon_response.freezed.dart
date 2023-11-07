// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListPokemonResponse _$ListPokemonResponseFromJson(Map<String, dynamic> json) {
  return _ListPokemonResponse.fromJson(json);
}

/// @nodoc
mixin _$ListPokemonResponse {
  int get count => throw _privateConstructorUsedError;
  List<ResultResponse> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListPokemonResponseCopyWith<ListPokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPokemonResponseCopyWith<$Res> {
  factory $ListPokemonResponseCopyWith(
          ListPokemonResponse value, $Res Function(ListPokemonResponse) then) =
      _$ListPokemonResponseCopyWithImpl<$Res, ListPokemonResponse>;
  @useResult
  $Res call({int count, List<ResultResponse> results});
}

/// @nodoc
class _$ListPokemonResponseCopyWithImpl<$Res, $Val extends ListPokemonResponse>
    implements $ListPokemonResponseCopyWith<$Res> {
  _$ListPokemonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListPokemonResponseImplCopyWith<$Res>
    implements $ListPokemonResponseCopyWith<$Res> {
  factory _$$ListPokemonResponseImplCopyWith(_$ListPokemonResponseImpl value,
          $Res Function(_$ListPokemonResponseImpl) then) =
      __$$ListPokemonResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<ResultResponse> results});
}

/// @nodoc
class __$$ListPokemonResponseImplCopyWithImpl<$Res>
    extends _$ListPokemonResponseCopyWithImpl<$Res, _$ListPokemonResponseImpl>
    implements _$$ListPokemonResponseImplCopyWith<$Res> {
  __$$ListPokemonResponseImplCopyWithImpl(_$ListPokemonResponseImpl _value,
      $Res Function(_$ListPokemonResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$ListPokemonResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListPokemonResponseImpl implements _ListPokemonResponse {
  _$ListPokemonResponseImpl(
      {required this.count, required final List<ResultResponse> results})
      : _results = results;

  factory _$ListPokemonResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListPokemonResponseImplFromJson(json);

  @override
  final int count;
  final List<ResultResponse> _results;
  @override
  List<ResultResponse> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ListPokemonResponse(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListPokemonResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListPokemonResponseImplCopyWith<_$ListPokemonResponseImpl> get copyWith =>
      __$$ListPokemonResponseImplCopyWithImpl<_$ListPokemonResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListPokemonResponseImplToJson(
      this,
    );
  }
}

abstract class _ListPokemonResponse implements ListPokemonResponse {
  factory _ListPokemonResponse(
      {required final int count,
      required final List<ResultResponse> results}) = _$ListPokemonResponseImpl;

  factory _ListPokemonResponse.fromJson(Map<String, dynamic> json) =
      _$ListPokemonResponseImpl.fromJson;

  @override
  int get count;
  @override
  List<ResultResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$ListPokemonResponseImplCopyWith<_$ListPokemonResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
