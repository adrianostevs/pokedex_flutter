import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/model/response/pokemon/stats/stats_response.dart';
import 'package:network/model/response/pokemon/types/types_response.dart';

part 'pokemon_response.g.dart';
part 'pokemon_response.freezed.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  factory PokemonResponse({
    required int height,
    required int id,
    required String name,
    required List<StatsResponse> stats,
    required List<TypesResponse> types,
    required int weight,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}
