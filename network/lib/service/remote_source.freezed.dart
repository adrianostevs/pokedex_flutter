// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteSource<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(int code, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(int code, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int code, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSourceSuccess<T> value) success,
    required TResult Function(RemoteSourceError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteSourceSuccess<T> value)? success,
    TResult? Function(RemoteSourceError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSourceSuccess<T> value)? success,
    TResult Function(RemoteSourceError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteSourceCopyWith<T, $Res> {
  factory $RemoteSourceCopyWith(
          RemoteSource<T> value, $Res Function(RemoteSource<T>) then) =
      _$RemoteSourceCopyWithImpl<T, $Res, RemoteSource<T>>;
}

/// @nodoc
class _$RemoteSourceCopyWithImpl<T, $Res, $Val extends RemoteSource<T>>
    implements $RemoteSourceCopyWith<T, $Res> {
  _$RemoteSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoteSourceSuccessImplCopyWith<T, $Res> {
  factory _$$RemoteSourceSuccessImplCopyWith(_$RemoteSourceSuccessImpl<T> value,
          $Res Function(_$RemoteSourceSuccessImpl<T>) then) =
      __$$RemoteSourceSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RemoteSourceSuccessImplCopyWithImpl<T, $Res>
    extends _$RemoteSourceCopyWithImpl<T, $Res, _$RemoteSourceSuccessImpl<T>>
    implements _$$RemoteSourceSuccessImplCopyWith<T, $Res> {
  __$$RemoteSourceSuccessImplCopyWithImpl(_$RemoteSourceSuccessImpl<T> _value,
      $Res Function(_$RemoteSourceSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoteSourceSuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RemoteSourceSuccessImpl<T> implements RemoteSourceSuccess<T> {
  const _$RemoteSourceSuccessImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'RemoteSource<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteSourceSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteSourceSuccessImplCopyWith<T, _$RemoteSourceSuccessImpl<T>>
      get copyWith => __$$RemoteSourceSuccessImplCopyWithImpl<T,
          _$RemoteSourceSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(int code, String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(int code, String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int code, String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSourceSuccess<T> value) success,
    required TResult Function(RemoteSourceError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteSourceSuccess<T> value)? success,
    TResult? Function(RemoteSourceError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSourceSuccess<T> value)? success,
    TResult Function(RemoteSourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RemoteSourceSuccess<T> implements RemoteSource<T> {
  const factory RemoteSourceSuccess({required final T data}) =
      _$RemoteSourceSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$RemoteSourceSuccessImplCopyWith<T, _$RemoteSourceSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteSourceErrorImplCopyWith<T, $Res> {
  factory _$$RemoteSourceErrorImplCopyWith(_$RemoteSourceErrorImpl<T> value,
          $Res Function(_$RemoteSourceErrorImpl<T>) then) =
      __$$RemoteSourceErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$RemoteSourceErrorImplCopyWithImpl<T, $Res>
    extends _$RemoteSourceCopyWithImpl<T, $Res, _$RemoteSourceErrorImpl<T>>
    implements _$$RemoteSourceErrorImplCopyWith<T, $Res> {
  __$$RemoteSourceErrorImplCopyWithImpl(_$RemoteSourceErrorImpl<T> _value,
      $Res Function(_$RemoteSourceErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$RemoteSourceErrorImpl<T>(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteSourceErrorImpl<T> implements RemoteSourceError<T> {
  const _$RemoteSourceErrorImpl({required this.code, required this.message});

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'RemoteSource<$T>.error(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteSourceErrorImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteSourceErrorImplCopyWith<T, _$RemoteSourceErrorImpl<T>>
      get copyWith =>
          __$$RemoteSourceErrorImplCopyWithImpl<T, _$RemoteSourceErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(int code, String message) error,
  }) {
    return error(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(int code, String message)? error,
  }) {
    return error?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(int code, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSourceSuccess<T> value) success,
    required TResult Function(RemoteSourceError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteSourceSuccess<T> value)? success,
    TResult? Function(RemoteSourceError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSourceSuccess<T> value)? success,
    TResult Function(RemoteSourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoteSourceError<T> implements RemoteSource<T> {
  const factory RemoteSourceError(
      {required final int code,
      required final String message}) = _$RemoteSourceErrorImpl<T>;

  int get code;
  String get message;
  @JsonKey(ignore: true)
  _$$RemoteSourceErrorImplCopyWith<T, _$RemoteSourceErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
