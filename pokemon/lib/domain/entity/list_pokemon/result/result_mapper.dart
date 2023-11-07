import 'package:network/model/response/list_pokemon/result/result_response.dart';
import 'package:pokemon/domain/entity/list_pokemon/result/result.dart';

class ResultMapper {
  const ResultMapper._();

  static Result mapResponseToDomain(ResultResponse response) {
    return Result(name: response.name, url: response.url);
  }
}
