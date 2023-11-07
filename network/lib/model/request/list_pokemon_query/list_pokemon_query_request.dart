import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_pokemon_query_request.g.dart';
part 'list_pokemon_query_request.freezed.dart';

@freezed
class ListPokemonQueryRequest with _$ListPokemonQueryRequest {
  factory ListPokemonQueryRequest({
    required int offset,
    required int limit,
  }) = _ListPokemonQueryRequest;

  factory ListPokemonQueryRequest.fromJson(Map<String, dynamic> json) =>
      _$ListPokemonQueryRequestFromJson(json);
}
