// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TypePokemon {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypePokemonCopyWith<TypePokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypePokemonCopyWith<$Res> {
  factory $TypePokemonCopyWith(
          TypePokemon value, $Res Function(TypePokemon) then) =
      _$TypePokemonCopyWithImpl<$Res, TypePokemon>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypePokemonCopyWithImpl<$Res, $Val extends TypePokemon>
    implements $TypePokemonCopyWith<$Res> {
  _$TypePokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypePokemonImplCopyWith<$Res>
    implements $TypePokemonCopyWith<$Res> {
  factory _$$TypePokemonImplCopyWith(
          _$TypePokemonImpl value, $Res Function(_$TypePokemonImpl) then) =
      __$$TypePokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TypePokemonImplCopyWithImpl<$Res>
    extends _$TypePokemonCopyWithImpl<$Res, _$TypePokemonImpl>
    implements _$$TypePokemonImplCopyWith<$Res> {
  __$$TypePokemonImplCopyWithImpl(
      _$TypePokemonImpl _value, $Res Function(_$TypePokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$TypePokemonImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypePokemonImpl implements _TypePokemon {
  _$TypePokemonImpl({required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TypePokemon(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypePokemonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypePokemonImplCopyWith<_$TypePokemonImpl> get copyWith =>
      __$$TypePokemonImplCopyWithImpl<_$TypePokemonImpl>(this, _$identity);
}

abstract class _TypePokemon implements TypePokemon {
  factory _TypePokemon(
      {required final String name,
      required final String url}) = _$TypePokemonImpl;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TypePokemonImplCopyWith<_$TypePokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
