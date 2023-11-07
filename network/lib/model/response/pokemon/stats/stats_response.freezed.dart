// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsResponse _$StatsResponseFromJson(Map<String, dynamic> json) {
  return _StatsResponse.fromJson(json);
}

/// @nodoc
mixin _$StatsResponse {
  int get base_stat => throw _privateConstructorUsedError;
  StatResponse get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsResponseCopyWith<StatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsResponseCopyWith<$Res> {
  factory $StatsResponseCopyWith(
          StatsResponse value, $Res Function(StatsResponse) then) =
      _$StatsResponseCopyWithImpl<$Res, StatsResponse>;
  @useResult
  $Res call({int base_stat, StatResponse stat});

  $StatResponseCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatsResponseCopyWithImpl<$Res, $Val extends StatsResponse>
    implements $StatsResponseCopyWith<$Res> {
  _$StatsResponseCopyWithImpl(this._value, this._then);

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
              as StatResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatResponseCopyWith<$Res> get stat {
    return $StatResponseCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsResponseImplCopyWith<$Res>
    implements $StatsResponseCopyWith<$Res> {
  factory _$$StatsResponseImplCopyWith(
          _$StatsResponseImpl value, $Res Function(_$StatsResponseImpl) then) =
      __$$StatsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int base_stat, StatResponse stat});

  @override
  $StatResponseCopyWith<$Res> get stat;
}

/// @nodoc
class __$$StatsResponseImplCopyWithImpl<$Res>
    extends _$StatsResponseCopyWithImpl<$Res, _$StatsResponseImpl>
    implements _$$StatsResponseImplCopyWith<$Res> {
  __$$StatsResponseImplCopyWithImpl(
      _$StatsResponseImpl _value, $Res Function(_$StatsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base_stat = null,
    Object? stat = null,
  }) {
    return _then(_$StatsResponseImpl(
      base_stat: null == base_stat
          ? _value.base_stat
          : base_stat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsResponseImpl implements _StatsResponse {
  _$StatsResponseImpl({required this.base_stat, required this.stat});

  factory _$StatsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsResponseImplFromJson(json);

  @override
  final int base_stat;
  @override
  final StatResponse stat;

  @override
  String toString() {
    return 'StatsResponse(base_stat: $base_stat, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsResponseImpl &&
            (identical(other.base_stat, base_stat) ||
                other.base_stat == base_stat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, base_stat, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsResponseImplCopyWith<_$StatsResponseImpl> get copyWith =>
      __$$StatsResponseImplCopyWithImpl<_$StatsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsResponseImplToJson(
      this,
    );
  }
}

abstract class _StatsResponse implements StatsResponse {
  factory _StatsResponse(
      {required final int base_stat,
      required final StatResponse stat}) = _$StatsResponseImpl;

  factory _StatsResponse.fromJson(Map<String, dynamic> json) =
      _$StatsResponseImpl.fromJson;

  @override
  int get base_stat;
  @override
  StatResponse get stat;
  @override
  @JsonKey(ignore: true)
  _$$StatsResponseImplCopyWith<_$StatsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
