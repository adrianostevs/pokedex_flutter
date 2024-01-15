import 'package:berry/domain/entity/list_berry/list_berry.dart';
import 'package:berry/domain/entity/list_berry/query/query.dart';
import 'package:shared_dependency/viewstate/view_state.dart';

abstract class BerryRepository {
  Future<ViewState<ListBerry>> getListBerry(Query request);
}
