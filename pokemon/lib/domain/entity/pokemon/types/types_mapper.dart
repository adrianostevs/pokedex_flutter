import 'package:network/model/response/pokemon/types/types_response.dart';
import 'package:pokemon/domain/entity/pokemon/types/type/type_mapper.dart';
import 'package:pokemon/domain/entity/pokemon/types/types.dart' as type;

class TypesMapper {
  TypesMapper._();

  static type.Types mapResponseToDomain(TypesResponse response) {
    return type.Types(type: TypeMapper.mapResponseToDomain(response.type));
  }
}
