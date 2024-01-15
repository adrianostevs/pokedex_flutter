// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Stats {
  int get base_stat => throw _privateConstructorUsedError;
  Stat get stat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call({int base_stat, Stat stat});

  $StatCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base_stat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      base_stat: null == base_stat
          ? _value.base_stat
          : base_stat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatCopyWith<$Res> get stat {
    return $StatCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsImplCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$StatsImplCopyWith(
          _$StatsImpl value, $Res Function(_$StatsImpl) then) =
      __$$StatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int base_stat, Stat stat});

  @override
  $StatCopyWith<$Res> get stat;
}

/// @nodoc
class __$$StatsImplCopyWithImpl<$Res>
    extends _$StatsCopyWithImpl<$Res, _$StatsImpl>
    implements _$$StatsImplCopyWith<$Res> {
  __$$StatsImplCopyWithImpl(
      _$StatsImpl _value, $Res Function(_$StatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base_stat = null,
    Object? stat = null,
  }) {
    return _then(_$StatsImpl(
      base_stat: null == base_stat
          ? _value.base_stat
          : base_stat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
    ));
  }
}

/// @nodoc

class _$StatsImpl implements _Stats {
  _$StatsImpl({required this.base_stat, required this.stat});

  @override
  final int base_stat;
  @override
  final Stat stat;

  @override
  String toString() {
    return 'Stats(base_stat: $base_stat, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsImpl &&
            (identical(other.base_stat, base_stat) ||
                other.base_stat == base_stat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, base_stat, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      __$$StatsImplCopyWithImpl<_$StatsImpl>(this, _$identity);
}

abstract class _Stats implements Stats {
  factory _Stats({required final int base_stat, required final Stat stat}) =
      _$StatsImpl;

  @override
  int get base_stat;
  @override
  Stat get stat;
  @override
  @JsonKey(ignore: true)
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
