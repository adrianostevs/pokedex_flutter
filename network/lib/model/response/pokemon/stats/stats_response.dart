// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/model/response/pokemon/stats/stat/stat_response.dart';

part 'stats_response.g.dart';
part 'stats_response.freezed.dart';

@freezed
class StatsResponse with _$StatsResponse {
  factory StatsResponse({
    required int base_stat,
    required StatResponse stat,
  }) = _StatsResponse;

  factory StatsResponse.fromJson(Map<String, dynamic> json) =>
      _$StatsResponseFromJson(json);
}
