
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/providers/home_providers.dart';
import 'package:food_recipe_app/features/home/presentation/providers/category_state/state/category_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/category_state/state/category_state.dart';
import 'package:food_recipe_app/shared/domain/models/categories/category_list/categories.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories/meals.dart';

final categoryPopularNotifierProvider = StateNotifierProvider<CategoryNotifier<Categories>,CategoryState<Categories>>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return CategoryNotifier<Categories>(repository)..fetchPopularCategory();
});

final categoryNotifierProvider = StateNotifierProvider.family<CategoryNotifier<Meals>, CategoryState<Meals>,String>((ref,value) {
  final repository = ref.watch(homeRepositoryProvider);
  return CategoryNotifier<Meals>(repository)..fetchMealsByCategory(category: value);
});
