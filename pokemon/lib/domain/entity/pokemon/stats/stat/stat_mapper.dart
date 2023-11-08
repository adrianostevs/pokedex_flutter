import 'package:network/model/response/pokemon/stats/stat/stat_response.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stat/stat.dart';

class StatMapper {
  StatMapper._();

  static Stat mapResponseToDomain(StatResponse response) {
    return Stat(name: response.name, url: response.url);
  }
}
