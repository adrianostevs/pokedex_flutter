import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stat/stat.dart';

part 'stats.freezed.dart';

@freezed
class Stats with _$Stats {
  factory Stats({
    required int base_stat,
    required Stat stat,
  }) = _Stats;
}
