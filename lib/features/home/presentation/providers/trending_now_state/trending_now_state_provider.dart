
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/providers/home_providers.dart';
import 'package:food_recipe_app/features/home/presentation/providers/trending_now_state/state/trending_now_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/trending_now_state/state/trending_now_state.dart';

final trendingNowNotifierProvider = StateNotifierProvider<TrendingNowNotifier, TrendingNowState>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return TrendingNowNotifier(repository)..fetchTrendingProducts();
});
