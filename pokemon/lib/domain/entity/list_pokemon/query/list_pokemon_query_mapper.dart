import 'package:network/network.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';

class ListPokemonQueryMapper {
  const ListPokemonQueryMapper._();

  static ListPokemonQueryRequest mapDomainToRequest(ListPokemonQuery req) {
    return ListPokemonQueryRequest(offset: req.offset, limit: req.limit);
  }
}
