import 'package:berry/domain/entity/list_berry/list_berry.dart';
import 'package:berry/domain/entity/list_berry/query/query.dart';
import 'package:berry/domain/entity/list_berry/result/result.dart';
import 'package:berry/domain/usecase/berry/berry_usecase.dart';
import 'package:flutter/material.dart';
import 'package:shared_dependency/shared_dependency.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainProvider());

enum MainState { loading, success, failed }

class MainProvider extends ChangeNotifier {
  MainProvider() {
    init();
  }

  MainState _mainState = MainState.success;
  MainState get state => _mainState;
  ListBerry _listBerry = ListBerry(count: 0, results: []);
  ListBerry get listBerry => _listBerry;
  PagingController<int, Result> pagingController =
      PagingController(firstPageKey: 0);

  void init() {
    getListBerry(0);
    pagingController.addPageRequestListener((pageKey) {
      getListBerry(pageKey);
    });
  }

  Future<dynamic> getListBerry(int pageKey) async {
    var usecase = GetIt.I<BerryUseCase>();
    try {
      _mainState = MainState.loading;
      notifyListeners();
      final listPokemon =
          await usecase.getListBerry(Query(offset: pageKey, limit: 20));
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
          return _listBerry = data;
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
}
