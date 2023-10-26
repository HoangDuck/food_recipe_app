
import 'package:food_recipe_app/recipe_details/presentation/providers/recipe_detail_state/state/recipe_detail_notifier.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail_state.freezed.dart';
part 'recipe_detail_state.g.dart';

@freezed
class RecipeDetailState with _$RecipeDetailState {
  const factory RecipeDetailState({
    @Default(RecipeDetailConcreteState.initial) RecipeDetailConcreteState state,
    @Default(false) bool hasData,
    @Default('') String message,
    @Default(false) bool isLoading,
    Meals? meal,
  }) = _RecipeDetailState;

  factory RecipeDetailState.fromJson(Map<String, Object?> json)
  => _$RecipeDetailStateFromJson(json);

}