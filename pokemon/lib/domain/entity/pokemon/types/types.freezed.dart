// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Types {
  TypePokemon get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypesCopyWith<Types> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesCopyWith<$Res> {
  factory $TypesCopyWith(Types value, $Res Function(Types) then) =
      _$TypesCopyWithImpl<$Res, Types>;
  @useResult
  $Res call({TypePokemon type});

  $TypePokemonCopyWith<$Res> get type;
}

/// @nodoc
class _$TypesCopyWithImpl<$Res, $Val extends Types>
    implements $TypesCopyWith<$Res> {
  _$TypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypePokemon,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypePokemonCopyWith<$Res> get type {
    return $TypePokemonCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypesImplCopyWith<$Res> implements $TypesCopyWith<$Res> {
  factory _$$TypesImplCopyWith(
          _$TypesImpl value, $Res Function(_$TypesImpl) then) =
      __$$TypesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypePokemon type});

  @override
  $TypePokemonCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypesImplCopyWithImpl<$Res>
    extends _$TypesCopyWithImpl<$Res, _$TypesImpl>
    implements _$$TypesImplCopyWith<$Res> {
  __$$TypesImplCopyWithImpl(
      _$TypesImpl _value, $Res Function(_$TypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$TypesImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypePokemon,
    ));
  }
}

/// @nodoc

class _$TypesImpl implements _Types {
  _$TypesImpl({required this.type});

  @override
  final TypePokemon type;

  @override
  String toString() {
    return 'Types(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypesImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypesImplCopyWith<_$TypesImpl> get copyWith =>
      __$$TypesImplCopyWithImpl<_$TypesImpl>(this, _$identity);
}

abstract class _Types implements Types {
  factory _Types({required final TypePokemon type}) = _$TypesImpl;

  @override
  TypePokemon get type;
  @override
  @JsonKey(ignore: true)
  _$$TypesImplCopyWith<_$TypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
