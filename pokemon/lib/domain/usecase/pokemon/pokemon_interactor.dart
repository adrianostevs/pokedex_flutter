import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';
import 'package:pokemon/domain/usecase/pokemon/pokemon_usecase.dart';
import 'package:pokemon/repository/pokemon/pokemon_repository.dart';
import 'package:shared_dependency/viewstate/view_state.dart';

class PokemonInteractor implements PokemonUsecase {
  final PokemonRepository _repository;

  PokemonInteractor(this._repository);

  @override
  Future<ViewState<ListPokemon>> getListPokemon(
      ListPokemonQuery request) async {
    return _repository.getListPokemon(request);
  }
}
