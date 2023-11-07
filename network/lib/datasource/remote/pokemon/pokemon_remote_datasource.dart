import 'package:network/model/request/list_pokemon_query/list_pokemon_query_request.dart';
import 'package:network/model/response/list_pokemon/list_pokemon_response.dart';
import 'package:network/model/response/pokemon/pokemon_response.dart';
import 'package:network/service/remote_source.dart';

abstract class PokemonRemoteDatasource {
  Future<RemoteSource<ListPokemonResponse>> getListPokemon(
      ListPokemonQueryRequest queryRequest);
  Future<RemoteSource<PokemonResponse>> getPokemon(dynamic params);
}
