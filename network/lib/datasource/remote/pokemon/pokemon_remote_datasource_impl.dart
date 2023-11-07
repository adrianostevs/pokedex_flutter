import 'package:network/datasource/remote/pokemon/pokemon_remote_datasource.dart';
import 'package:network/model/request/list_pokemon_query/list_pokemon_query_request.dart';
import 'package:network/model/response/list_pokemon/list_pokemon_response.dart';
import 'package:network/model/response/pokemon/pokemon_response.dart';
import 'package:network/service/api_constants.dart';
import 'package:network/service/http_client.dart';
import 'package:network/service/remote_source.dart';
import 'package:shared_dependency/shared_dependency.dart';

class PokemonRemoteDatasourceImpl implements PokemonRemoteDatasource {
  final HttpClient _client;

  PokemonRemoteDatasourceImpl(this._client);

  @override
  Future<RemoteSource<ListPokemonResponse>> getListPokemon(
      ListPokemonQueryRequest queryRequest) async {
    final getListPokemon =
        await _client.get(ApiConstants.GET_POKEMON, queryRequest.toJson());
    return getListPokemon.when(success: (data) {
      final Response<dynamic> response = data;
      final listPokemon = ListPokemonResponse.fromJson(response.data);
      return RemoteSource.success(data: listPokemon);
    }, error: (code, msg) {
      return RemoteSource.error(code: code, message: msg);
    });
  }

  @override
  Future<RemoteSource<PokemonResponse>> getPokemon(params) async {
    final getPokemon = await _client.get(ApiConstants.GET_POKEMON, params);
    return getPokemon.when(success: (data) {
      return RemoteSource.success(data: data);
    }, error: (code, msg) {
      return RemoteSource.error(code: code, message: msg);
    });
  }
}
