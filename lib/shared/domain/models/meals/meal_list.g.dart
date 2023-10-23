// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealListImpl _$$MealListImplFromJson(Map<String, dynamic> json) =>
    _$MealListImpl(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MealListImplToJson(_$MealListImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
