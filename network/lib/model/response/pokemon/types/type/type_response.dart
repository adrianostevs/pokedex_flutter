import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_response.g.dart';
part 'type_response.freezed.dart';

@freezed
class TypeResponse with _$TypeResponse {
  factory TypeResponse({
    required String name,
    required String url,
  }) = _TypeResponse;

  factory TypeResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeResponseFromJson(json);
}
