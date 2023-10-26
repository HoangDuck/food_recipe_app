import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/home/application/recent_recipe_state/recent_recipe_notifier.dart';
import 'package:food_recipe_app/home/application/recent_recipe_state/state/recent_recipe_state.dart';
import 'package:food_recipe_app/home/shared/repository_providers/home_providers.dart';

final recentRecipeProvider = StateNotifierProvider<RecentRecipeNotifier, RecentRecipeState>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return RecentRecipeNotifier(repository)..fetchMealsRecentRecipe();
});
