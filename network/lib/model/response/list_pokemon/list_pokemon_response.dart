import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/model/response/list_pokemon/result/result_response.dart';

part 'list_pokemon_response.g.dart';
part 'list_pokemon_response.freezed.dart';

@freezed
class ListPokemonResponse with _$ListPokemonResponse {
  factory ListPokemonResponse({
    required int count,
    required List<ResultResponse> results,
  }) = _ListPokemonResponse;

  factory ListPokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$ListPokemonResponseFromJson(json);
}
