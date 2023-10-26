
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/home/application/category_state/category_notifier.dart';
import 'package:food_recipe_app/home/application/category_state/state/category_state.dart';
import 'package:food_recipe_app/core/domain/models/categories/category_list/categories.dart';
import 'package:food_recipe_app/core/domain/models/categories/meal_by_categories/meals.dart';
import 'package:food_recipe_app/home/shared/repository_providers/home_providers.dart';

final categoryPopularNotifierProvider = StateNotifierProvider<CategoryNotifier<Categories>,CategoryState<Categories>>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return CategoryNotifier<Categories>(repository)..fetchPopularCategory();
});

final categoryNotifierProvider = StateNotifierProvider.family<CategoryNotifier<Meals>, CategoryState<Meals>,String>((ref,value) {
  final repository = ref.watch(homeRepositoryProvider);
  return CategoryNotifier<Meals>(repository)..fetchMealsByCategory(category: value);
});
