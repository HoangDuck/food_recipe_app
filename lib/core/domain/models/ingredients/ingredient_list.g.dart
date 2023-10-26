// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientsListImpl _$$IngredientsListImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientsListImpl(
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredients.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IngredientsListImplToJson(
        _$IngredientsListImpl instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
    };
