// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseImpl _$$PokemonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonResponseImpl(
      height: json['height'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$PokemonResponseImplToJson(
        _$PokemonResponseImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'id': instance.id,
      'name': instance.name,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };
