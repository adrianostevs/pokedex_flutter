import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/domain/entity/pokemon/stats/stats.dart';
import 'package:pokemon/domain/entity/pokemon/types/types.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    required int height,
    required int id,
    required String name,
    required List<Stats> stats,
    required List<Types> types,
    required int weight,
  }) = _Pokemon;
}
