
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/home/application/trending_now_state/state/trending_now_state.dart';
import 'package:food_recipe_app/home/application/trending_now_state/trending_now_notifier.dart';
import 'package:food_recipe_app/home/shared/repository_providers/home_providers.dart';

final trendingNowNotifierProvider = StateNotifierProvider<TrendingNowNotifier, TrendingNowState>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return TrendingNowNotifier(repository)..fetchTrendingProducts();
});

final searchMealsNotifierProvider = StateNotifierProvider.autoDispose.family<TrendingNowNotifier, TrendingNowState, String>((ref,value) {
  final repository = ref.watch(homeRepositoryProvider);
  return TrendingNowNotifier(repository)..searchProducts(value);
});