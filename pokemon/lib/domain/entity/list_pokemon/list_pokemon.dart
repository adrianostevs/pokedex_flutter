import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/domain/entity/list_pokemon/result/result.dart';

part 'list_pokemon.freezed.dart';

@freezed
class ListPokemon with _$ListPokemon {
  factory ListPokemon({
    required int count,
    required List<Result> results,
  }) = _ListPokemon;
}
