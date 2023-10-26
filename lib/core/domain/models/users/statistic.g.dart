// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticImpl _$$StatisticImplFromJson(Map<String, dynamic> json) =>
    _$StatisticImpl(
      recipe: json['recipe'] as int? ?? 0,
      videos: json['videos'] as int? ?? 0,
      followers: json['followers'] as int? ?? 0,
      following: json['following'] as int? ?? 0,
    );

Map<String, dynamic> _$$StatisticImplToJson(_$StatisticImpl instance) =>
    <String, dynamic>{
      'recipe': instance.recipe,
      'videos': instance.videos,
      'followers': instance.followers,
      'following': instance.following,
    };
