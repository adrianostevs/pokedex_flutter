import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';

@freezed
class TypePokemon with _$TypePokemon {
  factory TypePokemon({
    required String name,
    required String url,
  }) = _TypePokemon;
}
