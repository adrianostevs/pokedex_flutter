import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';
import 'package:pokemon/domain/entity/pokemon/pokemon.dart';
import 'package:shared_dependency/viewstate/view_state.dart';

abstract class PokemonRepository {
  Future<ViewState<ListPokemon>> getListPokemon(ListPokemonQuery request);
  Future<ViewState<Pokemon>> getPokemon(String params);
}
