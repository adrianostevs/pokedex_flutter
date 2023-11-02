import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_source.freezed.dart';

@freezed
class RemoteSource<T> with _$RemoteSource<T> {
  const factory RemoteSource.success({required T data}) =
      RemoteSourceSuccess<T>;

  const factory RemoteSource.error(
      {required int code, required String message}) = RemoteSourceError;
}
