import 'package:flutter/material.dart';
import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';
import 'package:pokemon/domain/usecase/pokemon/pokemon_usecase.dart';
import 'package:shared_dependency/shared_dependency.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainProvider());

enum MainState { loading, success, failed }

class MainProvider extends ChangeNotifier {
  MainProvider() {
    getListPokemon(0);
  }

  MainState _mainState = MainState.success;
  MainState get state => _mainState;
  ListPokemon _listPokemons = ListPokemon(count: 0, results: []);
  ListPokemon get listPokemons => _listPokemons;
  PagingController<int, ListPokemon> pagingController =
      PagingController(firstPageKey: 0);

  void init() {
    pagingController.addPageRequestListener((pageKey) {
      getListPokemon(pageKey * 20);
    });
  }

  Future<dynamic> getListPokemon(int page) async {
    var usecase = GetIt.I<PokemonUsecase>();
    try {
      _mainState = MainState.loading;
      notifyListeners();
      final listPokemon = await usecase
          .getListPokemon(ListPokemonQuery(offset: page, limit: 20));
      listPokemon.whenOrNull(
        success: (data) {
          _mainState = MainState.success;
          notifyListeners();
          return _listPokemons = data;
        },
        error: (message) {
          _mainState = MainState.failed;
          notifyListeners();
        },
      );
    } catch (e) {
      _mainState = MainState.failed;
      notifyListeners();
    }
  }
}
