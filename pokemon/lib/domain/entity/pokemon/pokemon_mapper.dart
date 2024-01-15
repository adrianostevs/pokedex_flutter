import 'package:network/model/response/pokemon/pokemon_response.dart';
import 'package:pokemon/domain/entity/pokemon/pokemon.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stats.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stats_mapper.dart';
import 'package:pokemon/domain/entity/pokemon/types/types.dart';
import 'package:pokemon/domain/entity/pokemon/types/types_mapper.dart';

class PokemonMapper {
  PokemonMapper._();

  static Pokemon mapResponseToDomain(PokemonResponse response) {
    List<Stats> listStats = [];
    for (var element in response.stats) {
      listStats.add(StatsMapper.mapResponseToDomain(element));
    }
    List<Types> listTypes = [];
    for (var element in response.types) {
      listTypes.add(TypesMapper.mapResponseToDomain(element));
    }
    return Pokemon(
        height: response.height,
        id: response.id,
        name: response.name,
        stats: listStats,
        types: listTypes,
        weight: response.weight);
  }
}
