import 'package:network/model/response/list_pokemon/list_pokemon_response.dart';
import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/result/result.dart';
import 'package:pokemon/domain/entity/list_pokemon/result/result_mapper.dart';

class ListPokemonMapper {
  const ListPokemonMapper._();

  static ListPokemon mapResponseToDomain(ListPokemonResponse response) {
    List<Result> listResult = [];
    for (var element in response.results) {
      listResult.add(ResultMapper.mapResponseToDomain(element));
    }
    return ListPokemon(count: response.count, results: listResult);
  }
}
