import 'package:berry/domain/usecase/berry/berry_interactor.dart';
import 'package:berry/domain/usecase/berry/berry_usecase.dart';
import 'package:berry/repository/berry/berry_repository.dart';
import 'package:berry/repository/berry/berry_repository_impl.dart';
import 'package:network/datasource/remote/berry/berry_remote_datasource.dart';
import 'package:network/datasource/remote/berry/berry_remote_datasource_impl.dart';
import 'package:network/datasource/remote/pokemon/pokemon_remote_datasource.dart';
import 'package:network/datasource/remote/pokemon/pokemon_remote_datasource_impl.dart';
import 'package:network/service/http_client.dart';
import 'package:pokemon/domain/usecase/pokemon/pokemon_interactor.dart';
import 'package:pokemon/domain/usecase/pokemon/pokemon_usecase.dart';
import 'package:pokemon/repository/pokemon/pokemon_repository.dart';
import 'package:pokemon/repository/pokemon/pokemon_repository_impl.dart';
import 'package:shared_dependency/shared_dependency.dart';

GetIt getIt = GetIt.instance;

void dependencies() {
  //pokemon
  getIt.registerLazySingleton<PokemonRemoteDatasource>(
      () => PokemonRemoteDatasourceImpl(HttpClient()));
  getIt.registerLazySingleton<PokemonRepository>(
      () => PokemonRepositoryImpl(getIt.get<PokemonRemoteDatasource>()));
  getIt.registerLazySingleton<PokemonUsecase>(
      () => PokemonInteractor(getIt.get<PokemonRepository>()));

  //berry
  getIt.registerLazySingleton<BerryRemoteDatasource>(
      () => BerryRemoteDatasourceImpl(HttpClient()));
  getIt.registerLazySingleton<BerryRepository>(
      () => BerryRepositoryImpl(getIt.get<BerryRemoteDatasource>()));
  getIt.registerLazySingleton<BerryUseCase>(
      () => BerryInteractor(getIt.get<BerryRepository>()));
}
