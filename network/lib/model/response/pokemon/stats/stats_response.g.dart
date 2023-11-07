// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsResponseImpl _$$StatsResponseImplFromJson(Map<String, dynamic> json) =>
    _$StatsResponseImpl(
      base_stat: json['base_stat'] as int,
      stat: StatResponse.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatsResponseImplToJson(_$StatsResponseImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.base_stat,
      'stat': instance.stat,
    };
