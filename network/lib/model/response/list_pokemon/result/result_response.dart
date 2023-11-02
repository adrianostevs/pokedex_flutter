import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_response.g.dart';
part 'result_response.freezed.dart';

@freezed
class ResultResponse with _$ResultResponse {
  factory ResultResponse({
    required String name,
    required String url,
  }) = _ResultResponse;

  factory ResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);
}
