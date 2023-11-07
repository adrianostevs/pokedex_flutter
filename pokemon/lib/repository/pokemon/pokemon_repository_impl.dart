import 'package:network/datasource/remote/pokemon/pokemon_remote_datasource.dart';
import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/list_pokemon_mapper.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query_mapper.dart';
import 'package:pokemon/repository/pokemon/pokemon_repository.dart';
import 'package:shared_dependency/viewstate/view_state.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDatasource datasource;

  PokemonRepositoryImpl(this.datasource);

  @override
  Future<ViewState<ListPokemon>> getListPokemon(
      ListPokemonQuery request) async {
    final response = await datasource
        .getListPokemon(ListPokemonQueryMapper.mapDomainToRequest(request));
    return response.when(success: (data) {
      return ViewState.success(
          data: ListPokemonMapper.mapResponseToDomain(data));
    }, error: (code, msg) {
      return ViewState.error(message: msg);
    });
  }
}
