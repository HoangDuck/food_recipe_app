
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/recipe_details/domain/providers/meal_providers.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/providers/recipe_detail_state/state/recipe_detail_notifier.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/providers/recipe_detail_state/state/recipe_detail_state.dart';

final mealNotifierProvider = StateNotifierProvider.family<RecipeDetailNotifier, RecipeDetailState, String>((ref,value) {
  final repository = ref.watch(mealRepositoryProvider);
  return RecipeDetailNotifier(repository)..fetchRecipeDetailData(idMeal: value);
});
