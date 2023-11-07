import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_pokemon_query.freezed.dart';

@freezed
class ListPokemonQuery with _$ListPokemonQuery {
  factory ListPokemonQuery({
    required int offset,
    required int limit,
  }) = _ListPokemonQuery;
}
