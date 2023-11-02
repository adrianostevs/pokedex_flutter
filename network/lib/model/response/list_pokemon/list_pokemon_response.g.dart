// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListPokemonResponseImpl _$$ListPokemonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListPokemonResponseImpl(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListPokemonResponseImplToJson(
        _$ListPokemonResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
