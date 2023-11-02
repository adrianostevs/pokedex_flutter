// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypesResponse _$TypesResponseFromJson(Map<String, dynamic> json) {
  return _TypesResponse.fromJson(json);
}

/// @nodoc
mixin _$TypesResponse {
  TypeResponse get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypesResponseCopyWith<TypesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesResponseCopyWith<$Res> {
  factory $TypesResponseCopyWith(
          TypesResponse value, $Res Function(TypesResponse) then) =
      _$TypesResponseCopyWithImpl<$Res, TypesResponse>;
  @useResult
  $Res call({TypeResponse type});

  $TypeResponseCopyWith<$Res> get type;
}

/// @nodoc
class _$TypesResponseCopyWithImpl<$Res, $Val extends TypesResponse>
    implements $TypesResponseCopyWith<$Res> {
  _$TypesResponseCopyWithImpl(this._value, this._then);

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
              as TypeResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeResponseCopyWith<$Res> get type {
    return $TypeResponseCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypesResponseImplCopyWith<$Res>
    implements $TypesResponseCopyWith<$Res> {
  factory _$$TypesResponseImplCopyWith(
          _$TypesResponseImpl value, $Res Function(_$TypesResponseImpl) then) =
      __$$TypesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypeResponse type});

  @override
  $TypeResponseCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypesResponseImplCopyWithImpl<$Res>
    extends _$TypesResponseCopyWithImpl<$Res, _$TypesResponseImpl>
    implements _$$TypesResponseImplCopyWith<$Res> {
  __$$TypesResponseImplCopyWithImpl(
      _$TypesResponseImpl _value, $Res Function(_$TypesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$TypesResponseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypesResponseImpl implements _TypesResponse {
  _$TypesResponseImpl({required this.type});

  factory _$TypesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypesResponseImplFromJson(json);

  @override
  final TypeResponse type;

  @override
  String toString() {
    return 'TypesResponse(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypesResponseImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypesResponseImplCopyWith<_$TypesResponseImpl> get copyWith =>
      __$$TypesResponseImplCopyWithImpl<_$TypesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypesResponseImplToJson(
      this,
    );
  }
}

abstract class _TypesResponse implements TypesResponse {
  factory _TypesResponse({required final TypeResponse type}) =
      _$TypesResponseImpl;

  factory _TypesResponse.fromJson(Map<String, dynamic> json) =
      _$TypesResponseImpl.fromJson;

  @override
  TypeResponse get type;
  @override
  @JsonKey(ignore: true)
  _$$TypesResponseImplCopyWith<_$TypesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
