import 'package:berry/domain/entity/list_berry/list_berry.dart';
import 'package:berry/domain/entity/list_berry/query/query.dart';
import 'package:berry/domain/usecase/berry/berry_usecase.dart';
import 'package:berry/repository/berry/berry_repository.dart';
import 'package:shared_dependency/viewstate/view_state.dart';

class BerryInteractor extends BerryUseCase {
  final BerryRepository repository;
  BerryInteractor(this.repository);

  @override
  Future<ViewState<ListBerry>> getListBerry(Query request) async {
    return repository.getListBerry(request);
  }
}
