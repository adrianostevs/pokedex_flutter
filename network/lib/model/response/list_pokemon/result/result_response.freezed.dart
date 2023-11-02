// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultResponse _$ResultResponseFromJson(Map<String, dynamic> json) {
  return _ResultResponse.fromJson(json);
}

/// @nodoc
mixin _$ResultResponse {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultResponseCopyWith<ResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultResponseCopyWith<$Res> {
  factory $ResultResponseCopyWith(
          ResultResponse value, $Res Function(ResultResponse) then) =
      _$ResultResponseCopyWithImpl<$Res, ResultResponse>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$ResultResponseCopyWithImpl<$Res, $Val extends ResultResponse>
    implements $ResultResponseCopyWith<$Res> {
  _$ResultResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ResultResponseImplCopyWith<$Res>
    implements $ResultResponseCopyWith<$Res> {
  factory _$$ResultResponseImplCopyWith(_$ResultResponseImpl value,
          $Res Function(_$ResultResponseImpl) then) =
      __$$ResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$ResultResponseImplCopyWithImpl<$Res>
    extends _$ResultResponseCopyWithImpl<$Res, _$ResultResponseImpl>
    implements _$$ResultResponseImplCopyWith<$Res> {
  __$$ResultResponseImplCopyWithImpl(
      _$ResultResponseImpl _value, $Res Function(_$ResultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$ResultResponseImpl(
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
class _$ResultResponseImpl implements _ResultResponse {
  _$ResultResponseImpl({required this.name, required this.url});

  factory _$ResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ResultResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultResponseImplCopyWith<_$ResultResponseImpl> get copyWith =>
      __$$ResultResponseImplCopyWithImpl<_$ResultResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultResponseImplToJson(
      this,
    );
  }
}

abstract class _ResultResponse implements ResultResponse {
  factory _ResultResponse(
      {required final String name,
      required final String url}) = _$ResultResponseImpl;

  factory _ResultResponse.fromJson(Map<String, dynamic> json) =
      _$ResultResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ResultResponseImplCopyWith<_$ResultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
