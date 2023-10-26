import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/home/domain/providers/user_providers.dart';
import 'package:food_recipe_app/home/presentation/providers/user_state/state/user_notifier.dart';
import 'package:food_recipe_app/home/presentation/providers/user_state/state/user_state.dart';

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  final repository = ref.watch(userRepositoryProvider);
  return UserNotifier(repository)..fetchUserData();
});
