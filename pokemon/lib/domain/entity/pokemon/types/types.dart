import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/domain/entity/pokemon/types/type/type.dart';

part 'types.freezed.dart';

@freezed
class Types with _$Types {
  factory Types({
    required TypePokemon type,
  }) = _Types;
}
