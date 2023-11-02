// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatResponse _$StatResponseFromJson(Map<String, dynamic> json) {
  return _StatResponse.fromJson(json);
}

/// @nodoc
mixin _$StatResponse {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatResponseCopyWith<StatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatResponseCopyWith<$Res> {
  factory $StatResponseCopyWith(
          StatResponse value, $Res Function(StatResponse) then) =
      _$StatResponseCopyWithImpl<$Res, StatResponse>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$StatResponseCopyWithImpl<$Res, $Val extends StatResponse>
    implements $StatResponseCopyWith<$Res> {
  _$StatResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$StatResponseImplCopyWith<$Res>
    implements $StatResponseCopyWith<$Res> {
  factory _$$StatResponseImplCopyWith(
          _$StatResponseImpl value, $Res Function(_$StatResponseImpl) then) =
      __$$StatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$StatResponseImplCopyWithImpl<$Res>
    extends _$StatResponseCopyWithImpl<$Res, _$StatResponseImpl>
    implements _$$StatResponseImplCopyWith<$Res> {
  __$$StatResponseImplCopyWithImpl(
      _$StatResponseImpl _value, $Res Function(_$StatResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$StatResponseImpl(
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
class _$StatResponseImpl implements _StatResponse {
  _$StatResponseImpl({required this.name, required this.url});

  factory _$StatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'StatResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatResponseImplCopyWith<_$StatResponseImpl> get copyWith =>
      __$$StatResponseImplCopyWithImpl<_$StatResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatResponseImplToJson(
      this,
    );
  }
}

abstract class _StatResponse implements StatResponse {
  factory _StatResponse(
      {required final String name,
      required final String url}) = _$StatResponseImpl;

  factory _StatResponse.fromJson(Map<String, dynamic> json) =
      _$StatResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$StatResponseImplCopyWith<_$StatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
