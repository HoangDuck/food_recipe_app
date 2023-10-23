
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/providers/home_providers.dart';
import 'package:food_recipe_app/features/home/presentation/providers/category_state/state/category_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/category_state/state/category_state.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/state/home_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/state/home_state.dart';

final homeNotifierPopularProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return HomeNotifier(repository)..fetchPopularCategory();
});

final categoryNotifierProvider = StateNotifierProvider.family<CategoryNotifier, CategoryState,String>((ref,value) {
  final repository = ref.watch(homeRepositoryProvider);
  return CategoryNotifier(repository)..fetchMealsByCategory(category: value);
});
