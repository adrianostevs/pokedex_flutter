import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/model/response/pokemon/types/type/type_response.dart';

part 'types_response.g.dart';
part 'types_response.freezed.dart';

@freezed
class TypesResponse with _$TypesResponse {
  factory TypesResponse({
    required TypeResponse type,
  }) = _TypesResponse;

  factory TypesResponse.fromJson(Map<String, dynamic> json) =>
      _$TypesResponseFromJson(json);
}
