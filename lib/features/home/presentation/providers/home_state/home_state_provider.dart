
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/providers/home_providers.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/state/home_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/state/home_state.dart';

final homeNotifierTrendingProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  return HomeNotifier(repository)..fetchTrendingProducts();
});
