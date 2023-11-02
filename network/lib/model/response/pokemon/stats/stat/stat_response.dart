import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_response.g.dart';
part 'stat_response.freezed.dart';

@freezed
class StatResponse with _$StatResponse {
  factory StatResponse({
    required String name,
    required String url,
  }) = _StatResponse;

  factory StatResponse.fromJson(Map<String, dynamic> json) =>
      _$StatResponseFromJson(json);
}
