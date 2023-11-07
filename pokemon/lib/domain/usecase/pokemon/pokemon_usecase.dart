import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';
import 'package:shared_dependency/viewstate/view_state.dart';

abstract class PokemonUsecase {
  Future<ViewState<ListPokemon>> getListPokemon(ListPokemonQuery request);
}
