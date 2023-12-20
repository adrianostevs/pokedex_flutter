// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_berry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListBerry {
  int get count => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListBerryCopyWith<ListBerry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBerryCopyWith<$Res> {
  factory $ListBerryCopyWith(ListBerry value, $Res Function(ListBerry) then) =
      _$ListBerryCopyWithImpl<$Res, ListBerry>;
  @useResult
  $Res call({int count, List<Result> results});
}

/// @nodoc
class _$ListBerryCopyWithImpl<$Res, $Val extends ListBerry>
    implements $ListBerryCopyWith<$Res> {
  _$ListBerryCopyWithImpl(this._value, this._then);

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
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListBerryImplCopyWith<$Res>
    implements $ListBerryCopyWith<$Res> {
  factory _$$ListBerryImplCopyWith(
          _$ListBerryImpl value, $Res Function(_$ListBerryImpl) then) =
      __$$ListBerryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Result> results});
}

/// @nodoc
class __$$ListBerryImplCopyWithImpl<$Res>
    extends _$ListBerryCopyWithImpl<$Res, _$ListBerryImpl>
    implements _$$ListBerryImplCopyWith<$Res> {
  __$$ListBerryImplCopyWithImpl(
      _$ListBerryImpl _value, $Res Function(_$ListBerryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$ListBerryImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc

class _$ListBerryImpl implements _ListBerry {
  _$ListBerryImpl({required this.count, required final List<Result> results})
      : _results = results;

  @override
  final int count;
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ListBerry(count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListBerryImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListBerryImplCopyWith<_$ListBerryImpl> get copyWith =>
      __$$ListBerryImplCopyWithImpl<_$ListBerryImpl>(this, _$identity);
}

abstract class _ListBerry implements ListBerry {
  factory _ListBerry(
      {required final int count,
      required final List<Result> results}) = _$ListBerryImpl;

  @override
  int get count;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$ListBerryImplCopyWith<_$ListBerryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
