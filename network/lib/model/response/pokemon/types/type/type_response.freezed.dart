// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeResponse _$TypeResponseFromJson(Map<String, dynamic> json) {
  return _TypeResponse.fromJson(json);
}

/// @nodoc
mixin _$TypeResponse {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeResponseCopyWith<TypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeResponseCopyWith<$Res> {
  factory $TypeResponseCopyWith(
          TypeResponse value, $Res Function(TypeResponse) then) =
      _$TypeResponseCopyWithImpl<$Res, TypeResponse>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeResponseCopyWithImpl<$Res, $Val extends TypeResponse>
    implements $TypeResponseCopyWith<$Res> {
  _$TypeResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$TypeResponseImplCopyWith<$Res>
    implements $TypeResponseCopyWith<$Res> {
  factory _$$TypeResponseImplCopyWith(
          _$TypeResponseImpl value, $Res Function(_$TypeResponseImpl) then) =
      __$$TypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TypeResponseImplCopyWithImpl<$Res>
    extends _$TypeResponseCopyWithImpl<$Res, _$TypeResponseImpl>
    implements _$$TypeResponseImplCopyWith<$Res> {
  __$$TypeResponseImplCopyWithImpl(
      _$TypeResponseImpl _value, $Res Function(_$TypeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$TypeResponseImpl(
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
@JsonSerializable()
class _$TypeResponseImpl implements _TypeResponse {
  _$TypeResponseImpl({required this.name, required this.url});

  factory _$TypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TypeResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeResponseImplCopyWith<_$TypeResponseImpl> get copyWith =>
      __$$TypeResponseImplCopyWithImpl<_$TypeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeResponseImplToJson(
      this,
    );
  }
}

abstract class _TypeResponse implements TypeResponse {
  factory _TypeResponse(
      {required final String name,
      required final String url}) = _$TypeResponseImpl;

  factory _TypeResponse.fromJson(Map<String, dynamic> json) =
      _$TypeResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TypeResponseImplCopyWith<_$TypeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
