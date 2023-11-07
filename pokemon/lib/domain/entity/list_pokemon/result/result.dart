import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result with _$Result {
  factory Result({
    required String name,
    required String url,
  }) = _Result;
}
