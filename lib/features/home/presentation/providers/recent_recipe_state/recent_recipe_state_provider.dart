import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/providers/home_providers.dart';
import 'package:food_recipe_app/features/home/presentation/providers/recent_recipe_state/state/recent_recipe_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/recent_recipe_state/state/recent_recipe_state.dart';
final recentRecipeProvider = StateNotifierProvider<RecentRecipeNotifier, RecentRecipeState>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return RecentRecipeNotifier(repository)..fetchMealsRecentRecipe();
});
