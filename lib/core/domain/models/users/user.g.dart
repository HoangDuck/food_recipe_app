// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      idUser: json['idUser'] as String?,
      fullName: json['fullName'] as String?,
      intro: json['intro'] as String?,
      statistic: json['statistic'] == null
          ? null
          : Statistic.fromJson(json['statistic'] as Map<String, dynamic>),
      meals: (json['meals'] as List<dynamic>?)
              ?.map((e) => Meals.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      avatar: json['avatar'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'idUser': instance.idUser,
      'fullName': instance.fullName,
      'intro': instance.intro,
      'statistic': instance.statistic,
      'meals': instance.meals,
      'avatar': instance.avatar,
    };
