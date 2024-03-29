import 'package:flutter/material.dart';
import 'package:pokemon/domain/entity/list_pokemon/list_pokemon.dart';
import 'package:pokemon/domain/entity/list_pokemon/query/list_pokemon_query.dart';
import 'package:pokemon/domain/entity/list_pokemon/result/result.dart';
import 'package:pokemon/domain/entity/pokemon/pokemon.dart';
import 'package:pokemon/domain/usecase/pokemon/pokemon_usecase.dart';
import 'package:pokemon/ui/detail/detail_screen.dart';
import 'package:shared_dependency/shared_dependency.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainProvider());
final pokemonProvider = StateProvider((ref) =>
    Pokemon(height: 0, id: 0, name: '', stats: [], types: [], weight: 0));

enum MainState { loading, success, failed }

class MainProvider extends ChangeNotifier {
  MainProvider() {
    init();
  }

  MainState _mainState = MainState.success;
  MainState get state => _mainState;
  ListPokemon _listPokemons = ListPokemon(count: 0, results: []);
  ListPokemon get listPokemons => _listPokemons;
  PagingController<int, Result> pagingController =
      PagingController(firstPageKey: 0);

  void init() {
    getListPokemon(0);
    pagingController.addPageRequestListener((pageKey) {
      getListPokemon(pageKey);
    });
  }

  Future<dynamic> getListPokemon(int pageKey) async {
    var usecase = GetIt.I<PokemonUsecase>();
    try {
      _mainState = MainState.loading;
      notifyListeners();
      final listPokemon = await usecase
          .getListPokemon(ListPokemonQuery(offset: pageKey, limit: 20));
      listPokemon.whenOrNull(
        success: (data) {
          final isLastPage = data.results.length < 20;
          if (isLastPage) {
            pagingController.appendLastPage(data.results);
          } else {
            pagingController.appendPage(
                data.results, pageKey + data.results.length);
          }
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
      pagingController.error = e.toString;
      notifyListeners();
    }
  }

  Future<dynamic> getPokemon(
      String params, WidgetRef ref, BuildContext context) async {
    var usecase = GetIt.I<PokemonUsecase>();
    try {
      DialogLoading(context: context).showLoading();
      final pokemon = await usecase.getPokemon(params);
      pokemon.whenOrNull(
        success: (data) {
          DialogLoading(context: context).dismissLoading();
          ref.read(pokemonProvider.notifier).state = data;
          print('datanya $data');
          Navigator.pushNamed(context, DetailScreen.routeName);
          notifyListeners();
        },
        error: (message) {
          notifyListeners();
        },
      );
    } catch (e) {
      print('cek $e');
      notifyListeners();
    }
  }
}
