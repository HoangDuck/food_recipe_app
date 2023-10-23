// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_by_category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealByCategoryListImpl _$$MealByCategoryListImplFromJson(
        Map<String, dynamic> json) =>
    _$MealByCategoryListImpl(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MealByCategoryListImplToJson(
        _$MealByCategoryListImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
