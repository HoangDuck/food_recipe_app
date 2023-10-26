
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/recipe_details/application/recipe_detail_state.dart';
import 'package:food_recipe_app/recipe_details/shared/meal_providers.dart';
import 'package:food_recipe_app/recipe_details/application/recipe_detail_notifier.dart';

final mealNotifierProvider = StateNotifierProvider.family<RecipeDetailNotifier, RecipeDetailState, String>((ref,value) {
  final repository = ref.watch(mealRepositoryProvider);
  return RecipeDetailNotifier(repository)..fetchRecipeDetailData(idMeal: value);
});
