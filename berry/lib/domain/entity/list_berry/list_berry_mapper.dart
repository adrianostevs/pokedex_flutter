import 'package:berry/domain/entity/list_berry/list_berry.dart';
import 'package:berry/domain/entity/list_berry/result/result.dart';
import 'package:berry/domain/entity/list_berry/result/result_mapper.dart';
import 'package:network/model/response/list_pokemon/list_pokemon_response.dart';

class ListBerryMapper {
  const ListBerryMapper._();

  static ListBerry mapResponseToDomain(ListPokemonResponse response) {
    List<Result> listResult = [];
    for (var element in response.results) {
      listResult.add(ResultMapper.mapResponseToDomain(element));
    }
    return ListBerry(count: response.count, results: listResult);
  }
}
