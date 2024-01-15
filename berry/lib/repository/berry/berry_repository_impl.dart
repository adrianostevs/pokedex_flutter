import 'package:berry/domain/entity/list_berry/list_berry.dart';
import 'package:berry/domain/entity/list_berry/list_berry_mapper.dart';
import 'package:berry/domain/entity/list_berry/query/query.dart';
import 'package:berry/domain/entity/list_berry/query/query_mapper.dart';
import 'package:berry/repository/berry/berry_repository.dart';
import 'package:network/datasource/remote/berry/berry_remote_datasource.dart';
import 'package:shared_dependency/viewstate/view_state.dart';

class BerryRepositoryImpl extends BerryRepository {
  final BerryRemoteDatasource datasource;
  BerryRepositoryImpl(this.datasource);

  @override
  Future<ViewState<ListBerry>> getListBerry(Query request) async {
    final response =
        await datasource.getListBerry(QueryMapper.mapDomainToRequest(request));
    return response.when(success: (data) {
      return ViewState.success(data: ListBerryMapper.mapResponseToDomain(data));
    }, error: (code, msg) {
      return ViewState.error(message: msg);
    });
  }
}
