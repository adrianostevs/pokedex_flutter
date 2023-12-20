import 'package:network/datasource/remote/berry/berry_remote_datasource.dart';
import 'package:network/model/response/list_pokemon/list_pokemon_response.dart';
import 'package:network/network.dart';
import 'package:network/service/api_constants.dart';
import 'package:network/service/remote_source.dart';
import 'package:shared_dependency/shared_dependency.dart';

class BerryRemoteDatasourceImpl extends BerryRemoteDatasource {
  final HttpClient _client;

  BerryRemoteDatasourceImpl(this._client);

  @override
  Future<RemoteSource<ListPokemonResponse>> getListBerry(
      ListPokemonQueryRequest queryRequest) async {
    final getListBerry =
        await _client.get(ApiConstants.GET_BERRY, queryRequest.toJson());
    return getListBerry.when(success: (data) {
      final Response<dynamic> response = data;
      final listBerry = ListPokemonResponse.fromJson(response.data);
      return RemoteSource.success(data: listBerry);
    }, error: (code, msg) {
      return RemoteSource.error(code: code, message: msg);
    });
  }
}
