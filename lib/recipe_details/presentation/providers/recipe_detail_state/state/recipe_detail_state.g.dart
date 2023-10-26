// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDetailStateImpl _$$RecipeDetailStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeDetailStateImpl(
      state: $enumDecodeNullable(
              _$RecipeDetailConcreteStateEnumMap, json['state']) ??
          RecipeDetailConcreteState.initial,
      hasData: json['hasData'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      isLoading: json['isLoading'] as bool? ?? false,
      meal: json['meal'] == null
          ? null
          : Meals.fromJson(json['meal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecipeDetailStateImplToJson(
        _$RecipeDetailStateImpl instance) =>
    <String, dynamic>{
      'state': _$RecipeDetailConcreteStateEnumMap[instance.state]!,
      'hasData': instance.hasData,
      'message': instance.message,
      'isLoading': instance.isLoading,
      'meal': instance.meal,
    };

const _$RecipeDetailConcreteStateEnumMap = {
  RecipeDetailConcreteState.initial: 'initial',
  RecipeDetailConcreteState.loading: 'loading',
  RecipeDetailConcreteState.loaded: 'loaded',
  RecipeDetailConcreteState.failure: 'failure',
};
