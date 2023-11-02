import 'package:network/datasource/remote/pokemon/pokemon_remote_datasource.dart';
import 'package:network/datasource/remote/pokemon/pokemon_remote_datasource_impl.dart';
import 'package:network/service/http_client.dart';
import 'package:shared_dependency/shared_dependency.dart';

GetIt getIt = GetIt.instance;

void dependencies() {
  getIt.registerLazySingleton<PokemonRemoteDatasource>(
      () => PokemonRemoteDatasourceImpl(HttpClient()));
}
