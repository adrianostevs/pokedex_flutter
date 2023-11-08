import 'package:network/model/response/pokemon/stats/stats_response.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stat/stat_mapper.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stats.dart';

class StatsMapper {
  StatsMapper._();

  static Stats mapResponseToDomain(StatsResponse response) {
    return Stats(
        base_stat: response.base_stat,
        stat: StatMapper.mapResponseToDomain(response.stat));
  }
}
