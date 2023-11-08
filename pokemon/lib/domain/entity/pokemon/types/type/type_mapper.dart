import 'package:network/model/response/pokemon/types/type/type_response.dart';
import 'package:pokemon/domain/entity/pokemon/types/type/type.dart' as type;

class TypeMapper {
  TypeMapper._();

  static type.TypePokemon mapResponseToDomain(TypeResponse response) {
    return type.TypePokemon(name: response.name, url: response.url);
  }
}
