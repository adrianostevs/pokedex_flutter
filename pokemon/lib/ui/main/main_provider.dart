import 'package:flutter/material.dart';
import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';
import 'package:pokemon/domain/usecase/pokemon/pokemon_usecase.dart';
import 'package:shared_dependency/shared_dependency.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainProvider());

enum MainState { loading, success, failed }

class MainProvider extends ChangeNotifier {
  MainProvider() {
    getListPokemon();
  }

  MainState _mainState = MainState.success;
  MainState get state => _mainState;
  ListPokemon _listPokemons = ListPokemon(count: 0, results: []);
  ListPokemon get listPokemons => _listPokemons;

  Future<dynamic> getListPokemon() async {
    print('here1');
    var usecase = GetIt.I<PokemonUsecase>();
    try {
      _mainState = MainState.loading;
      notifyListeners();
      final listPokemon =
          await usecase.getListPokemon(ListPokemonQuery(offset: 0, limit: 0));
      listPokemon.whenOrNull(
        success: (data) {
          _mainState = MainState.success;
          notifyListeners();
          print('here $data');
          return _listPokemons = data;
        },
        error: (message) {
          _mainState = MainState.failed;
          notifyListeners();
          print('here2');
        },
      );
    } catch (e) {
      _mainState = MainState.failed;
      notifyListeners();
      print('here3 $e');
    }
  }
}
