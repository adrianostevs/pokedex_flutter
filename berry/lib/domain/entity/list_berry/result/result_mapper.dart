import 'package:berry/domain/entity/list_berry/result/result.dart';
import 'package:network/model/response/list_pokemon/result/result_response.dart';

class ResultMapper {
  ResultMapper._();

  static Result mapResponseToDomain(ResultResponse response) {
    return Result(name: response.name, url: response.url);
  }
}
