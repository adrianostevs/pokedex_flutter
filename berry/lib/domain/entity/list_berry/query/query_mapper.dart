import 'package:berry/domain/entity/list_berry/query/query.dart';
import 'package:network/model/request/list_pokemon_query/list_pokemon_query_request.dart';

class QueryMapper {
  const QueryMapper._();

  static ListPokemonQueryRequest mapDomainToRequest(Query req) {
    return ListPokemonQueryRequest(offset: req.offset, limit: req.limit);
  }
}
